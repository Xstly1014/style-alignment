# Frontend Design Specification

> Version: [date]
> Status: Draft
> Source: [reference pages / design doc / merged]

---

## Design Tokens

### Colors

#### Must Follow
- Primary: `#[hex]`
- Primary hover: `#[hex]`
- Primary active: `#[hex]`
- Primary disabled: `#[hex]`
- Background (page): `#[hex]`
- Background (card): `#[hex]`
- Background (table header): `#[hex]`
- Background (hover): `#[hex]`
- Border (default): `#[hex]`
- Border (hover): `#[hex]`
- Border (focus): `#[hex]`
- Text (primary): `#[hex]`
- Text (secondary): `#[hex]`
- Text (placeholder): `#[hex]`
- Text (disabled): `#[hex]`
- Status success: `#[hex]`
- Status warning: `#[hex]`
- Status error: `#[hex]`
- Status info: `#[hex]`

#### Must NOT
- [Forbidden colors and patterns]

#### Freedom Zone
- [Where color deviation is allowed]

---

### Typography

#### Must Follow
- Font family: `[stack]`
- h1: [px] / [weight] / [line-height]
- h2: [px] / [weight] / [line-height]
- h3: [px] / [weight] / [line-height]
- h4: [px] / [weight] / [line-height]
- Body: [px] / [weight] / [line-height]
- Small: [px] / [weight] / [line-height]
- Caption: [px] / [weight] / [line-height]
- Label: [px] / [weight] / [line-height]

#### Must NOT
- [Forbidden font sizes, weights, families]

#### Freedom Zone
- [Where typography deviation is allowed]

---

### Spacing Scale

#### Must Follow
- Allowed values: [4px, 8px, 12px, 16px, 24px, 32px, 48px]
- Section spacing: [px]
- Component spacing: [px]
- Form item spacing: [px]
- Page edge padding: [px]

#### Must NOT
- [Forbidden spacing values]

#### Freedom Zone
- [Where spacing deviation is allowed]

---

### Shadows

#### Must Follow
- Card resting: `[shadow definition]`
- Card hover: `[shadow definition]`
- Modal: `[shadow definition]`
- Dropdown: `[shadow definition]`

#### Must NOT
- [Forbidden shadow patterns]

---

### Border Radius

#### Must Follow
- Button: [px]
- Input: [px]
- Card: [px]
- Modal: [px]
- Tag: [px]

#### Must NOT
- [Forbidden radius values]

---

### Transitions

#### Must Follow
- Default duration: [ms]
- Default easing: `[easing function]`
- Hover transition: [ms] [easing]

#### Must NOT
- [Forbidden transition patterns]

---

## Component Standards

### Buttons

#### Must Follow
- Large: height [px], padding [px], font-size [px]
- Default: height [px], padding [px], font-size [px]
- Small: height [px], padding [px], font-size [px]
- Border-radius: [px]
- Primary variant: bg `#[hex]`, text `#[hex]`, hover bg `#[hex]`
- Secondary variant: bg `#[hex]`, text `#[hex]`, border `#[hex]`
- Danger variant: bg `#[hex]`, text `#[hex]`
- Ghost variant: bg transparent, text `#[hex]`
- Icon + text spacing: [px]
- Primary action placement: [rule]
- Max buttons per row: [number]

#### Must NOT
- [Forbidden button patterns]

#### Freedom Zone
- [Where button deviation is allowed]

---

### Forms & Inputs

#### Must Follow
- Input height: [px]
- Input padding: [px]
- Input border: [width] [style] `#[hex]`
- Input border-radius: [px]
- Placeholder color: `#[hex]`
- Focus border: `#[hex]`
- Focus shadow: `[definition]`
- Label font-size: [px]
- Label color: `#[hex]`
- Label width: [px]
- Label position: [left/top]
- Required asterisk: [color] [position]
- Form item margin-bottom: [px]
- Error message: font-size [px], color `#[hex]`, position [rule]

#### Must NOT
- [Forbidden form patterns]

#### Freedom Zone
- [Where form deviation is allowed]

---

### Tables

#### Must Follow
- Header height: [px]
- Header background: `#[hex]`
- Header font-size: [px]
- Header font-weight: [weight]
- Header text color: `#[hex]`
- Row height: [px]
- Row hover background: `#[hex]`
- Cell padding: [px]
- Cell font-size: [px]
- Cell text color: `#[hex]`
- Border: [which borders], [width] [style] `#[hex]`
- Empty state: [text], [icon], [padding]
- Pagination position: [position]
- Pagination style: [description]
- Action column: button type, spacing [px]

#### Must NOT
- [Forbidden table patterns]

#### Freedom Zone
- [Where table deviation is allowed]

---

### Cards

#### Must Follow
- Border-radius: [px]
- Shadow (resting): `[definition]`
- Shadow (hover): `[definition]`
- Border: [width] [style] `#[hex]`
- Header padding: [px]
- Header background: `#[hex]` or transparent
- Header title font-size: [px]
- Header title color: `#[hex]`
- Body padding: [px]
- Footer padding: [px]
- Footer border-top: [width] [style] `#[hex]`

#### Must NOT
- [Forbidden card patterns]

#### Freedom Zone
- [Where card deviation is allowed]

---

### Modals & Drawers

#### Must Follow
- Modal small width: [px]
- Modal medium width: [px]
- Modal large width: [px]
- Modal mask opacity: [value]
- Modal body padding: [px]
- Modal header: [style]
- Modal footer: button placement [rule]
- Drawer width: [px]
- Drawer placement: [right/left]
- Drawer mask: [yes/no]
- Drawer body padding: [px]
- Close button: [style]
- Close on mask click: [yes/no]

#### Must NOT
- [Forbidden modal/drawer patterns]

#### Freedom Zone
- [Where modal/drawer deviation is allowed]

---

### Navigation

#### Must Follow
- Top nav height: [px]
- Top nav background: `#[hex]`
- Logo: [size], [position]
- Menu item font-size: [px]
- Menu item padding: [px]
- Menu item active state: [style]
- Sidebar width: [px]
- Sidebar collapse width: [px]
- Sidebar background: `#[hex]`
- Sidebar item height: [px]
- Sidebar item active indicator: [style]
- Sidebar icon size: [px]

#### Must NOT
- [Forbidden navigation patterns]

#### Freedom Zone
- [Where navigation deviation is allowed]

---

### Breadcrumbs

#### Must Follow
- Separator: [character]
- Font-size: [px]
- Color (link): `#[hex]`
- Color (current/last): `#[hex]`
- Last item: link or plain text
- Spacing between items: [px]

#### Must NOT
- [Forbidden breadcrumb patterns]

---

### Tabs

#### Must Follow
- Tab height: [px]
- Active indicator: [underline/background], [color], [width]
- Tab font-size: [px]
- Tab font-weight (active): [weight]
- Tab spacing: [px]
- Close button: [style] (if applicable)

#### Must NOT
- [Forbidden tab patterns]

---

### Tags & Badges

#### Must Follow
- Height: [px]
- Padding: [px]
- Border-radius: [px]
- Font-size: [px]
- Color variants: [list with hex values]

#### Must NOT
- [Forbidden tag patterns]

---

## Layout Standards

### Page Frame

#### Must Follow
- Page background: `#[hex]`
- Page max-width: [px]
- Header height: [px]
- Footer height: [px]
- Content padding: [px]
- Sidebar width: [px]

#### Must NOT
- [Forbidden layout patterns]

#### Freedom Zone
- [Where layout deviation is allowed]

---

### Grid System

#### Must Follow
- Column count: [number]
- Gutter width: [px]
- Breakpoints: [list]

#### Must NOT
- [Forbidden grid patterns]

---

## Interaction Standards

### States

#### Must Follow
- Hover transition: [ms] [easing]
- Active/press: [style]
- Disabled: opacity [value], cursor [type]
- Loading: [spinner/skeleton style]

#### Must NOT
- [Forbidden state patterns]

---

### Feedback

#### Must Follow
- Toast position: [position]
- Toast duration: [ms]
- Success toast: [style]
- Error toast: [style]
- Warning toast: [style]
- Info toast: [style]
- Confirmation dialog: trigger conditions, button order

#### Must NOT
- [Forbidden feedback patterns]

---

### Empty & Error States

#### Must Follow
- Empty state: [layout], [illustration], [text], [action button]
- Error state: [layout], [illustration], [text], [retry action]

#### Must NOT
- [Forbidden empty/error patterns]

---

## Sub-interface Standards

### Sub-page Navigation Logic

#### Must Follow
- Use drawer when: [condition]
- Use modal when: [condition]
- Use new page when: [condition]
- Form layout in sub-interfaces: [single/two column], label position
- Close/Cancel/Confirm button placement: [rule]
- Unsaved changes confirmation: [behavior]

#### Must NOT
- [Forbidden sub-interface patterns]

#### Freedom Zone
- [Where sub-interface deviation is allowed]

---

## Forbidden Patterns (Aggregated)

> This section consolidates all "Must NOT" rules from every dimension above for quick reference.

1. [Forbidden rule 1]
2. [Forbidden rule 2]
3. [Forbidden rule 3]
4. ...

---

## Freedom Zones (Aggregated)

> This section consolidates all "Freedom Zone" rules for quick reference.

1. [Freedom rule 1]
2. [Freedom rule 2]
3. [Freedom rule 3]
4. ...

---

## Revision History

| Date | Change | Reason |
|------|--------|--------|
| [date] | Initial creation | Extracted from reference pages |
