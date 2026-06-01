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

import '../app_routes.dart';
import '../models/app_theme_definition.dart';
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

    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        // Back arrow provided automatically by Navigator.
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 8),
        children: [

          // ----------------------------------------------------------------
          // Theme navigation tile — opens the dedicated theme-selection page.
          // ----------------------------------------------------------------
          _SectionHeader(label: 'Appearance', colorScheme: cs),
          _ThemeNavigationTile(colorScheme: cs),
          const Divider(height: 1),

          // ----------------------------------------------------------------
          // Font size
          // ----------------------------------------------------------------
          _SectionHeader(label: 'Text', colorScheme: cs),
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
          _SectionHeader(label: 'Reading Format', colorScheme: cs),
          _VerseFormatTile(colorScheme: cs),
          const Divider(height: 1),

          // ----------------------------------------------------------------
          // Display toggles — verse numbers, headings, words-of-Christ
          // ----------------------------------------------------------------
          _SectionHeader(label: 'Display', colorScheme: cs),
          _BoolSettingTile(
            icon: Icons.format_list_numbered_rounded,
            title: 'Verse Numbers',
            subtitle: 'Show verse number superscripts in the reading screen.',
            value: SettingsService.instance.showVerseNumbers,
            onChanged: (v) => SettingsService.instance.setShowVerseNumbers(v),
          ),
          _BoolSettingTile(
            icon: Icons.title_rounded,
            title: 'Section Headings',
            subtitle: 'Show section and Psalm headings between passages.',
            value: SettingsService.instance.showSectionHeadings,
            onChanged: (v) => SettingsService.instance.setShowSectionHeadings(v),
          ),
          _BoolSettingTile(
            icon: Icons.format_color_text_rounded,
            title: 'Red-Letter Text',
            subtitle:
                "Show Jesus' words in red. Disable for a single text color.",
            value: SettingsService.instance.wordsOfChristRed,
            onChanged: (v) => SettingsService.instance.setWordsOfChristRed(v),
          ),
          const SizedBox(height: 16),
        ],
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

    return ListTile(
      leading: Icon(Icons.palette_rounded, color: colorScheme.primary),
      title: const Text('Theme'),
      subtitle: Text(themeName),
      trailing: const Icon(Icons.chevron_right_rounded),
      onTap: () => Navigator.pushNamed(context, AppRoutes.themeSelection),
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
              const Expanded(
                child: Text(
                  'Font Size',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                ),
              ),
              // Display the current value (e.g. "17 px").
              Text(
                '${fontSizePx.round()} px',
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
            label: 'Font size slider',
            value: '${fontSizePx.round()} pixels',
            hint: 'Swipe to adjust from 12 to 28',
            child: Slider(
              value: fontSizePx,
              min: 12,
              max: 28,
              divisions: 16, // 1 px steps
              label: '${fontSizePx.round()} px',
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
              // A short representative verse for the preview.
              '"In the beginning God created the heavens and the earth." — Gen 1:1',
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
              const Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Verse Format',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(height: 2),
                    Text(
                      'Choose how scripture text is laid out.',
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),

          // Segmented button — two exclusive options.
          SegmentedButton<bool>(
            segments: const [
              ButtonSegment<bool>(
                value: true,
                label: Text('Paragraph'),
                icon: Icon(Icons.menu_book_rounded),
              ),
              ButtonSegment<bool>(
                value: false,
                label: Text('Verse List'),
                icon: Icon(Icons.format_list_bulleted_rounded),
              ),
            ],
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
                  ? 'Text flows continuously with indented paragraphs, '
                      'like a printed Bible.'
                  : 'Each scripture paragraph begins on its own line, '
                      'making verse groups easy to spot.',
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
