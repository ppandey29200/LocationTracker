using Microsoft.Maui.Controls.Maps;
using Microsoft.Maui.Devices.Sensors;
using SQLite;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.Maui.Controls;
using MapImplementation.Models;
using MapImplementation.Services;

namespace MapImplementation
{
    public partial class MainPage : ContentPage
    {
        private readonly DatabaseService _databaseService;
        private readonly List<Coordinate> _coordinates = new();

        public MainPage()
        {
            InitializeComponent();
            _databaseService = new DatabaseService();

            // Start tracking location
            StartLocationTracking();
        }

        private async void StartLocationTracking()
        {
            try
            {
                var request = new GeolocationRequest(GeolocationAccuracy.Best);
                var location = await Geolocation.Default.GetLocationAsync(request);

                if (location != null)
                {
                    SaveLocation(location.Latitude, location.Longitude);
                    UpdateHeatMap();
                }
            }
            catch (Exception ex)
            {
                await DisplayAlert("Error", $"Unable to get location: {ex.Message}", "OK");
            }
        }

        private void SaveLocation(double latitude, double longitude)
        {
            _databaseService.SaveLocation(latitude, longitude);
        }

        private void UpdateHeatMap()
        {
            _coordinates.Clear();
            var savedLocations = _databaseService.GetSavedLocations();

            foreach (var loc in savedLocations)
            {
                _coordinates.Add(new Coordinate(loc.Latitude, loc.Longitude));
            }

            DrawHeatMap();
        }

        private void DrawHeatMap()
        {
            Microsoft.Maui.Controls.Maps.Map mapControl = this.Map;
            mapControl.Pins.Clear();
            foreach (var coord in _coordinates)
            {
                var pin = new Pin
                {
                    Label = "Tracked Location",
                    Location = new Location(coord.Latitude, coord.Longitude)
                };

                mapControl.Pins.Add(pin);
            }
        }
    }

}
