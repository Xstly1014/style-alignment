# 12-Dimension Extraction Checklist

> Loaded by the Style Alignment skill at **Phase 2A**. Work through every dimension below and record **exact values** (hex colors, px/rem sizes, border-radius, shadow definitions, transition timings). Approximations are unacceptable — trust the code, not comments.

For each dimension, extract exact values. Then, per the skill's boundary rules, also define the "Must NOT" and "Freedom Zone" for that dimension in the methodology document.

#### 1. Page Frame
- Background color (exact hex)
- Page max-width / min-width / width
- Header: height, background, border-bottom, content max-width, logo placement
- Footer: height, background, content, visibility rules
- Sidebar: width, collapse width, background, border
- Content area: padding, max-width, margin
- Scrollbar style (if customized)

#### 2. Typography System
- Font family stack (primary, fallback, monospace for code)
- Font sizes: h1-h6, body, small, caption, label — exact px/rem
- Font weights: which weights are used where
- Line heights per text level
- Letter spacing per text level
- Text colors: primary, secondary, tertiary, disabled, inverse, link
- Text alignment defaults

#### 3. Color System
- Primary color + all variants (hover, active, disabled, light, dark)
- Background colors: page, card, table, modal, input, hover
- Border colors: default, hover, focus, error
- Status colors: success, warning, error, info — exact hex + when to use
- Text colors: primary, secondary, placeholder, disabled
- Shadow colors and opacity levels
- Forbidden colors: explicitly list colors that must NEVER appear

#### 4. Button System
- Heights: large, default, small — exact px
- Padding: horizontal and vertical per size
- Border-radius
- Font size and weight per button size
- Color variants: primary, secondary, danger, ghost, link, text
- Per variant: background, text color, border, hover state, active state, disabled state, loading state
- Icon + text spacing
- Button group spacing
- **Placement rules**: where primary actions go, where danger actions go, max buttons per row

#### 5. Form & Input System
- Input height, padding, border, border-radius
- Placeholder color
- Focus state: border color, shadow, transition
- Error state: border color, error message style, position
- Label: font-size, color, margin-bottom, required asterisk style
- Form item spacing (margin-bottom)
- Form layout: label position (left/top), label width
- Select/DatePicker/Switch: height, style alignment with input
- Validation feedback: timing, position, color, icon

#### 6. Table System
- Header: height, background, font-size, font-weight, text color, text-align
- Row: height, hover background, selected background, striped background (if any)
- Cell: padding, font-size, text color, text-align defaults
- Border: which borders exist (header-bottom, row-bottom, vertical), color, width
- Empty state: text, icon, padding
- Pagination: position (bottom-right default), component style, page size selector
- Action column: button type, spacing, confirmation behavior
- Sort indicator style
- Selection (checkbox) column style

#### 7. Card & Container System
- Card border-radius
- Card shadow (resting, hover)
- Card border
- Card padding (header, body, footer)
- Card header: height, background, title font-size, title color, extra content position
- Card body: padding, background
- Card footer: padding, border-top, button placement
- Modal/Drawer: width, padding, header/footer style, overlay opacity, close button style

#### 8. Navigation System
- Top nav: height, background, logo size, menu item style (font, padding, active state)
- Sidebar: width, item height, item padding, active indicator (left border? background?), icon size, collapsed state
- Breadcrumbs: separator character, font-size, color, last item style, link vs non-link
- Tabs: height, active indicator (underline? background?), font-size, close button, tab spacing
- Page jump behavior: which nav items jump to new pages vs. open in modal vs. open in new tab
- **Navigation forbidden patterns**: e.g., never open internal pages in new tab, never use breadcrumbs without parent context

#### 9. Spacing & Layout Rules
- Section spacing: margin between major page sections
- Component spacing: gap between sibling components
- Form item spacing
- Table action button spacing
- Card internal spacing
- Page edge padding
- Grid system: column count, gutter width, responsive breakpoints
- **Spacing scale**: define allowed spacing values (e.g., 4px, 8px, 12px, 16px, 24px, 32px — no other values)

#### 10. Icon System
- Icon library (e.g., Element Plus Icons, Ant Design Icons, Lucide)
- Icon sizes per usage context (nav: 20px, button: 16px, table action: 14px, etc.)
- Icon colors per context
- Icon + text spacing
- **Forbidden**: mixing icon libraries, using PNG/SVG sprites alongside icon fonts, inconsistent icon stroke widths

#### 11. Interaction & Feedback
- Hover transitions: duration, easing
- Active/press feedback
- Loading: spinner style, skeleton style, overlay style
- Toast/Notification: position, duration, style per type (success/warning/error/info)
- Confirmation dialogs: trigger conditions, style, button order
- Disabled state: opacity, cursor, color
- Empty state: layout, illustration, text, action button
- Error state: layout, illustration, text, retry action

#### 12. Sub-interface System
- Drawer: width, placement, mask, close behavior, body padding
- Modal: width per usage (small/medium/large), mask opacity, close on mask click, body padding
- Sub-page navigation: when to use drawer vs modal vs new page
- Form layout in sub-interfaces: single column vs two column, label position
- Close/Cancel/Confirm: button placement (footer right-aligned), button variants, confirmation behavior for unsaved changes
