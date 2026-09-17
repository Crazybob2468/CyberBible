// Settings screen for Cyber Bible.
//
// Provides user-adjustable reading and display preferences:
//   - Font Size     : slider 12–28 px with a live preview sentence
//   - Verse Format  : toggle between Paragraph (default) and Verse-List
//   - Words of Christ : toggle red vs body color
//   - Section Headings: toggle show/hide
//   - Verse Numbers : toggle show/hide
//   - Theme         : navigates to the separate ThemeSelectionScreen
//
// All settings are persisted via [SettingsService].  Changes take effect
// immediately in the reading screen (no restart required) because
// [ReadingScreen] listens to [SettingsService.instance].

import 'package:flutter/material.dart';
import 'package:cyber_bible_app/l10n/localization_helpers.dart';

import '../app_routes.dart';
import '../models/app_theme_definition.dart';
import '../services/language_catalog.dart';
import '../services/settings_service.dart';

// ---------------------------------------------------------------------------
// Main screen widget
// ---------------------------------------------------------------------------

/// Settings screen — tap the gear icon in HomeScreen or ReadingScreen AppBar.
class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  // ---- State ----

  /// Slider value tracked locally so the slider thumb moves smoothly.
  /// Committed to [SettingsService] on pointer-up (onChangeEnd).
  late double _fontSizePx;

  // ---- Lifecycle ----

  @override
  void initState() {
    super.initState();
    _fontSizePx = SettingsService.instance.fontSizePx;
    // Rebuild when any setting changes (e.g. from another screen).
    SettingsService.instance.addListener(_onSettingsChanged);
  }

  @override
  void dispose() {
    SettingsService.instance.removeListener(_onSettingsChanged);
    super.dispose();
  }

  /// Rebuilds this screen when SettingsService fires a change notification.
  void _onSettingsChanged() => setState(() {
    _fontSizePx = SettingsService.instance.fontSizePx;
  });

  // ---- Build ----

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final cs = theme.colorScheme;
    final l10n = appLocalizations(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.settingsTitle),
        // Back arrow provided automatically by Navigator.
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Column(
          children: [

          // ----------------------------------------------------------------
          // Language settings
          // ----------------------------------------------------------------
          _SectionHeader(label: l10n.languageSection, colorScheme: cs),
          _LanguageTile(colorScheme: cs),
          const Divider(height: 1),

          // ----------------------------------------------------------------
          // Theme navigation tile — opens the dedicated theme-selection page.
          // ----------------------------------------------------------------
          _SectionHeader(label: l10n.appearance, colorScheme: cs),
          _ThemeNavigationTile(colorScheme: cs),
          const Divider(height: 1),

          // ----------------------------------------------------------------
          // Font size
          // ----------------------------------------------------------------
          _SectionHeader(label: l10n.textSection, colorScheme: cs),
          _FontSizeTile(
            fontSizePx: _fontSizePx,
            colorScheme: cs,
            onChanged: (v) => setState(() => _fontSizePx = v),
            onChangeEnd: (v) => SettingsService.instance.setFontSizePx(v),
          ),
          const Divider(height: 1),

          // ----------------------------------------------------------------
          // Verse format toggle
          // ----------------------------------------------------------------
          _SectionHeader(label: l10n.readingFormatSection, colorScheme: cs),
          _VerseFormatTile(colorScheme: cs),
          const Divider(height: 1),

          // ----------------------------------------------------------------
          // Display toggles — verse numbers, headings, words-of-Christ
          // ----------------------------------------------------------------
          _SectionHeader(label: l10n.displaySection, colorScheme: cs),
          _BoolSettingTile(
            icon: Icons.format_list_numbered_rounded,
            title: l10n.verseNumbers,
            subtitle: l10n.showVerseNumbersSubtitle,
            value: SettingsService.instance.showVerseNumbers,
            onChanged: (v) => SettingsService.instance.setShowVerseNumbers(v),
          ),
          _BoolSettingTile(
            icon: Icons.title_rounded,
            title: l10n.sectionHeadings,
            subtitle: l10n.showSectionHeadingsSubtitle,
            value: SettingsService.instance.showSectionHeadings,
            onChanged: (v) => SettingsService.instance.setShowSectionHeadings(v),
          ),
          _BoolSettingTile(
            icon: Icons.format_color_text_rounded,
            title: l10n.redLetterText,
            subtitle: l10n.wordsOfChristSubtitle,
            value: SettingsService.instance.wordsOfChristRed,
            onChanged: (v) => SettingsService.instance.setWordsOfChristRed(v),
          ),
          const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}

// ---------------------------------------------------------------------------
// Section header label
// ---------------------------------------------------------------------------

/// Compact uppercase section label used to group related settings tiles.
class _SectionHeader extends StatelessWidget {
  /// The label text (e.g. 'Appearance', 'Text').
  final String label;

  /// Used to read the color scheme for the header text color.
  final ColorScheme colorScheme;

  const _SectionHeader({required this.label, required this.colorScheme});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 4),
      child: Text(
        label.toUpperCase(),
        style: TextStyle(
          fontSize: 11,
          fontWeight: FontWeight.w700,
          letterSpacing: 1.2,
          color: colorScheme.primary,
        ),
      ),
    );
  }
}

// ---------------------------------------------------------------------------
// Theme navigation tile
// ---------------------------------------------------------------------------

/// ListTile that navigates to the theme-selection screen.
///
/// Shows the name of the currently active theme so users know what they have
/// selected without having to open the page first.
class _ThemeNavigationTile extends StatelessWidget {
  /// Used to read colors for the tile icon.
  final ColorScheme colorScheme;

  const _ThemeNavigationTile({required this.colorScheme});

  @override
  Widget build(BuildContext context) {
    // Look up the current theme's canonical display name from the catalog.
    // AppThemeCatalog.byId() always returns a valid definition (falls back
    // to classicWhite if the id is unrecognised), so this is safe to call
    // without null-checking.
    final themeId = SettingsService.instance.selectedThemeId;
    final themeName = AppThemeCatalog.byId(themeId).name;

    final l10n = appLocalizations(context);

    return ListTile(
      leading: Icon(Icons.palette_rounded, color: colorScheme.primary),
      title: Text(l10n.theme),
      subtitle: Text(themeName),
      trailing: const Icon(Icons.chevron_right_rounded),
      onTap: () => Navigator.pushNamed(context, AppRoutes.themeSelection),
    );
  }
}

/// Language settings tile.
///
/// Exposes the primary language controls for this phase: use system language
/// and a manual app-language picker. The app currently supports English and
/// Spanish in the UI layer, and the system default is preferred when enabled.
class _LanguageTile extends StatelessWidget {
  final ColorScheme colorScheme;

  const _LanguageTile({required this.colorScheme});

  @override
  Widget build(BuildContext context) {
    final l10n = appLocalizations(context);
    final currentCode = SettingsService.instance.effectiveLanguageCode;
    final currentName = SettingsService.instance.languageDisplayName(currentCode);
    final useSystem = SettingsService.instance.useSystemLanguage;

    return Column(
      children: [
        SwitchListTile.adaptive(
          value: useSystem,
          onChanged: (value) async {
            await SettingsService.instance.setUseSystemLanguage(value);
          },
          title: Text(l10n.useSystemLanguage),
          subtitle: Text(l10n.useSystemLanguageSubtitle),
          secondary: Icon(Icons.language_rounded, color: colorScheme.primary),
        ),
        ListTile(
          leading: Icon(Icons.translate_rounded, color: colorScheme.primary),
          title: Text(l10n.appLanguage),
          subtitle: Text(currentName),
          trailing: const Icon(Icons.chevron_right_rounded),
          onTap: () async {
            final choice = await _showLanguagePicker(context);
            if (choice == null) return;
            await SettingsService.instance.setUseSystemLanguage(false);
            await SettingsService.instance.setSelectedLanguageCode(choice);
          },
        ),
      ],
    );
  }

  /// Shows the picker used to override the language manually.
  Future<String?> _showLanguagePicker(BuildContext context) async {
    return showDialog<String>(
      context: context,
      builder: (_) => const _LanguagePickerDialog(),
    );
  }
}

/// Stateful dialog for searching and selecting a local language module.
class _LanguagePickerDialog extends StatefulWidget {
  const _LanguagePickerDialog();

  @override
  State<_LanguagePickerDialog> createState() => _LanguagePickerDialogState();
}

class _LanguagePickerDialogState extends State<_LanguagePickerDialog> {
  final TextEditingController _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = appLocalizations(context);
    final filtered = androidLanguageCatalog
        .where((entry) => entry.matches(_searchController.text))
        .toList();

    return AlertDialog(
      title: Text(l10n.chooseLanguage),
      content: SizedBox(
        width: 420,
        height: 520,
        child: Column(
          children: [
            Text(
              l10n.languageCatalogDescription,
              style: Theme.of(context).textTheme.bodySmall,
            ),
            const SizedBox(height: 12),
            TextField(
              controller: _searchController,
              autofocus: true,
              decoration: InputDecoration(
                labelText: l10n.languageSearchHint,
                prefixIcon: const Icon(Icons.search_rounded),
                border: const OutlineInputBorder(),
              ),
              onChanged: (_) => setState(() {}),
            ),
            const SizedBox(height: 12),
            Expanded(
              child: filtered.isEmpty
                  ? Center(child: Text(l10n.languageNoMatches))
                  : ListView.builder(
                      itemCount: filtered.length,
                      itemBuilder: (context, index) {
                        final entry = filtered[index];
                        final installed =
                            entry.state == LanguageModuleState.installed;
                        return ListTile(
                          enabled: installed,
                          leading: Icon(
                            installed
                                ? Icons.download_done_rounded
                                : Icons.language_rounded,
                          ),
                          title: Text(entry.nativeName),
                          subtitle: Text(
                            '${entry.englishName} • ${entry.code} • '
                            '${installed
                                ? l10n.languageModuleInstalled
                                : l10n.languageModulePending}',
                          ),
                          onTap: installed
                              ? () => Navigator.pop(context, entry.code)
                              : null,
                        );
                      },
                    ),
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: Text(l10n.cancel),
        ),
      ],
    );
  }
}

// ---------------------------------------------------------------------------
// Font size tile
// ---------------------------------------------------------------------------

/// Font size slider with a live preview sentence below it.
///
/// The slider moves smoothly (local state via [onChanged]) and only commits
/// to [SettingsService] when the user releases the thumb ([onChangeEnd]).
class _FontSizeTile extends StatelessWidget {
  /// Current slider value in logical pixels.
  final double fontSizePx;

  /// Fired every frame while the thumb is being dragged (local state only).
  final ValueChanged<double> onChanged;

  /// Fired once when the user releases the slider thumb (persists to service).
  final ValueChanged<double> onChangeEnd;

  /// Used to read the color scheme for the preview text color.
  final ColorScheme colorScheme;

  const _FontSizeTile({
    required this.fontSizePx,
    required this.onChanged,
    required this.onChangeEnd,
    required this.colorScheme,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = appLocalizations(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Label row with current size value.
          Row(
            children: [
              Icon(Icons.text_fields_rounded,
                  color: colorScheme.primary, size: 20),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  l10n.fontSize,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              // Display the current value (e.g. "17 px").
              Text(
                l10n.fontSizePixels(fontSizePx.round()),
                style: TextStyle(
                  fontSize: 13,
                  color: colorScheme.onSurfaceVariant,
                ),
              ),
            ],
          ),
          const SizedBox(height: 4),

          // Slider — min 12, max 28, step 1.
          Semantics(
            label: l10n.fontSizeSlider,
            value: l10n.fontSizePixels(fontSizePx.round()),
            hint: l10n.fontSizeSliderHint,
            child: Slider(
              value: fontSizePx,
              min: 12,
              max: 28,
              divisions: 16, // 1 px steps
              label: l10n.fontSizePixels(fontSizePx.round()),
              onChanged: onChanged,
              onChangeEnd: onChangeEnd,
            ),
          ),

          // Live preview sentence rendered at the current font size.
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            decoration: BoxDecoration(
              color: colorScheme.surfaceContainerHighest.withAlpha(180),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              l10n.fontPreview,
              style: TextStyle(
                fontSize: fontSizePx,
                height: 1.6,
                color: colorScheme.onSurface,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ---------------------------------------------------------------------------
// Verse format tile
// ---------------------------------------------------------------------------

/// Segmented button that toggles between Paragraph and Verse-List mode.
class _VerseFormatTile extends StatelessWidget {
  /// Used to read the current setting value and color scheme.
  final ColorScheme colorScheme;

  const _VerseFormatTile({required this.colorScheme});

  @override
  Widget build(BuildContext context) {
    final isParagraph = SettingsService.instance.paragraphMode;
    final l10n = appLocalizations(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Label row.
          Row(
            children: [
              Icon(Icons.article_rounded, // verse/paragraph layout icon
                  color: colorScheme.primary, size: 20),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      l10n.verseFormatTitle,
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 2),
                    Text(
                      l10n.verseFormatSubtitle,
                      style: const TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),

          // Segmented button — two exclusive options.
          SegmentedButton<bool>(
            segments: [
              ButtonSegment<bool>(
                value: true,
                icon: Icon(Icons.menu_book_rounded),
                label: Text(l10n.paragraphMode),
                tooltip: l10n.paragraphModeTooltip,
              ),
              ButtonSegment<bool>(
                value: false,
                icon: Icon(Icons.format_list_bulleted_rounded),
                label: Text(l10n.verseListMode),
                tooltip: l10n.verseListModeTooltip,
              ),
            ],
            selectedIcon: Icon(
              isParagraph
                  ? Icons.menu_book_rounded
                  : Icons.format_list_bulleted_rounded,
            ),
            selected: {isParagraph},
            onSelectionChanged: (selection) =>
                SettingsService.instance.setParagraphMode(selection.first),
            style: ButtonStyle(
              // Ensure the button is at least 48 dp tall for tap targets.
              minimumSize: WidgetStateProperty.all(const Size(0, 48)),
            ),
          ),

          const SizedBox(height: 10),

          // Short description of the selected mode.
          Padding(
            padding: const EdgeInsets.only(left: 4),
            child: Text(
                isParagraph
                  ? l10n.paragraphModeDescription
                  : l10n.verseListModeDescription,
              style: TextStyle(
                fontSize: 12,
                color: colorScheme.onSurfaceVariant,
                height: 1.5,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ---------------------------------------------------------------------------
// Generic boolean setting tile
// ---------------------------------------------------------------------------

/// A simple [SwitchListTile]-style tile for a boolean setting.
class _BoolSettingTile extends StatelessWidget {
  /// Leading icon identifying this setting category.
  final IconData icon;

  /// Primary label text.
  final String title;

  /// Supporting description shown below the title.
  final String subtitle;

  /// Current toggle state.
  final bool value;

  /// Called when the user flips the switch (returns the new value).
  final ValueChanged<bool> onChanged;

  const _BoolSettingTile({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return SwitchListTile(
      secondary: Icon(icon, color: cs.primary),
      title: Text(title),
      subtitle: Text(subtitle),
      value: value,
      onChanged: onChanged,
      // Tap anywhere on the tile (not just the switch) to toggle.
      tileColor: Colors.transparent,
    );
  }
}
