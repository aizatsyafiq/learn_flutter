# third_app

An expense tracker application that demonstrates advanced Flutter concepts. Users can add expenses with titles, amounts, dates, and categories, view them in a list, delete them with undo functionality, and see a chart visualization of their spending by category.

## Topics Covered

### Data Management & Models
- **Enums** - Defining category types (food, travel, leisure, work)
- **UUID generation** - Creating unique IDs using the `uuid` package
- **DateTime objects** - Working with dates and times
- **Date formatting** - Using the `intl` package to format dates
- **Custom getters** - Creating computed properties (e.g., `formattedDate`, `totalExpenses`)
- **Named constructors** - Alternative constructors like `ExpenseBucket.forCategory()`
- **Filtering with `.where()`** - Filtering lists based on conditions
- **List manipulation methods** - `indexOf()`, `insert()`, `add()`, `remove()`

### User Input & Forms
- **TextEditingController** - Managing text input state
- **TextField widget** - Creating input fields with decorations
- **DropdownButton** - Implementing dropdown menus
- **showDatePicker** - Displaying native date picker dialogs
- **Input validation** - Checking for valid user input
- **String manipulation** - Using `.trim()`, `.isEmpty`, `.toUpperCase()`
- **Safe parsing** - `double.tryParse()` for converting strings to numbers
- **Number formatting** - `toStringAsFixed()` for displaying currency

### Async Programming & Null Safety
- **async/await** - Handling asynchronous operations
- **Null safety operators** - Using `?` (nullable) and `!` (non-null assertion)
- **Nullable types** - `DateTime?` for optional date values

### Lifecycle Management
- **dispose() method** - Cleaning up resources (controllers) when widgets are destroyed

### UI Components & Interactions
- **showModalBottomSheet** - Displaying modal overlays from bottom
- **showDialog and AlertDialog** - Showing error/confirmation dialogs
- **SnackBar and SnackBarAction** - Temporary notifications with undo actions
- **ScaffoldMessenger** - Managing SnackBars globally
- **Navigator.pop()** - Closing dialogs and modals
- **AppBar actions** - Adding action buttons to the app bar
- **Card widget** - Material design card containers
- **Spacer widget** - Creating flexible space between widgets

### Advanced List Handling
- **ListView.builder** - Efficiently building lists with many items
- **Dismissible widget** - Swipe-to-delete functionality
- **ValueKey** - Providing unique keys for list items

### Theming & Styling
- **ThemeData** - Comprehensive app theming
- **ColorScheme.fromSeed()** - Generating harmonious color schemes
- **Dark mode support** - Implementing `darkTheme` and `ThemeMode`
- **copyWith()** - Modifying theme properties immutably
- **Theme.of(context)** - Accessing current theme data
- **Custom theme properties** - Styling AppBar, Cards, Buttons globally
- **BoxDecoration** - Advanced container styling
- **BorderRadius** - Creating rounded corners
- **LinearGradient** - Gradient backgrounds
- **Color manipulation** - Using `withOpacity()` and `withValues()`

### Layout & Responsiveness
- **MediaQuery** - Accessing device information (brightness, size)
- **FractionallySizedBox** - Sizing widgets proportionally
- **DecoratedBox** - Applying decorations to widgets
- **CrossAxisAlignment** - Aligning children in rows/columns
- **MainAxisAlignment** - Controlling main axis alignment
- **for-in loops in widgets** - Alternative to `.map()` for generating widget lists

### Data Visualization
- **Custom chart components** - Building bar charts from scratch
- **Dynamic data aggregation** - Grouping expenses by category
- **Proportional sizing** - Scaling chart bars based on data

### External Packages
- **uuid** - Generating universally unique identifiers
- **intl** - Internalization and date/time formatting

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
