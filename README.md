# LocationTracker
# Location Tracking App with Heatmap Visualization

This is a .NET MAUI application that tracks the user's location, stores the data in an SQLite database, and visualizes the location data on a map as a basic heatmap. The app uses the `Microsoft.Maui.Controls.Maps` component for displaying the map and SQLite for storing location data.

## Features

- Tracks user location using `Geolocation` API.
- Stores location data in an SQLite database.
- Displays stored locations as pins on a map.
- Visualizes location density with a basic heatmap using pin color variations.

## Prerequisites

- .NET MAUI
- Visual Studio 2022 or later with .NET MAUI workload installed.
- Android or iOS emulator or a physical device for testing.
- SQLite for local database storage.
- Permissions for location access (configured for Android and iOS).

## Getting Started

### 1. Clone the repository

```bash
git clone https://github.com/yourusername/LocationTracker.git
cd LocationTracker