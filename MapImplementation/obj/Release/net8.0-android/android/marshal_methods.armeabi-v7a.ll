; ModuleID = 'marshal_methods.armeabi-v7a.ll'
source_filename = "marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [123 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [246 x i32] [
	i32 42639949, ; 0: System.Threading.Thread => 0x28aa24d => 114
	i32 67008169, ; 1: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 33
	i32 72070932, ; 2: Microsoft.Maui.Graphics.dll => 0x44bb714 => 48
	i32 117431740, ; 3: System.Runtime.InteropServices => 0x6ffddbc => 109
	i32 165246403, ; 4: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 59
	i32 182336117, ; 5: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 77
	i32 195452805, ; 6: vi/Microsoft.Maui.Controls.resources.dll => 0xba65f85 => 30
	i32 199333315, ; 7: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xbe195c3 => 31
	i32 205061960, ; 8: System.ComponentModel => 0xc38ff48 => 93
	i32 280992041, ; 9: cs/Microsoft.Maui.Controls.resources.dll => 0x10bf9929 => 2
	i32 317674968, ; 10: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 30
	i32 318968648, ; 11: Xamarin.AndroidX.Activity.dll => 0x13031348 => 55
	i32 336156722, ; 12: ja/Microsoft.Maui.Controls.resources.dll => 0x14095832 => 15
	i32 342366114, ; 13: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 66
	i32 347068432, ; 14: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0x14afd810 => 53
	i32 356389973, ; 15: it/Microsoft.Maui.Controls.resources.dll => 0x153e1455 => 14
	i32 379916513, ; 16: System.Threading.Thread.dll => 0x16a510e1 => 114
	i32 385762202, ; 17: System.Memory.dll => 0x16fe439a => 100
	i32 395744057, ; 18: _Microsoft.Android.Resource.Designer => 0x17969339 => 34
	i32 435591531, ; 19: sv/Microsoft.Maui.Controls.resources.dll => 0x19f6996b => 26
	i32 442565967, ; 20: System.Collections => 0x1a61054f => 90
	i32 450948140, ; 21: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 65
	i32 469710990, ; 22: System.dll => 0x1bff388e => 117
	i32 498788369, ; 23: System.ObjectModel => 0x1dbae811 => 105
	i32 500358224, ; 24: id/Microsoft.Maui.Controls.resources.dll => 0x1dd2dc50 => 13
	i32 503918385, ; 25: fi/Microsoft.Maui.Controls.resources.dll => 0x1e092f31 => 7
	i32 513247710, ; 26: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 42
	i32 539058512, ; 27: Microsoft.Extensions.Logging => 0x20216150 => 39
	i32 541416417, ; 28: MapImplementation => 0x20455be1 => 87
	i32 592146354, ; 29: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x234b6fb2 => 21
	i32 627609679, ; 30: Xamarin.AndroidX.CustomView => 0x2568904f => 63
	i32 627931235, ; 31: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 19
	i32 672442732, ; 32: System.Collections.Concurrent => 0x2814a96c => 88
	i32 688181140, ; 33: ca/Microsoft.Maui.Controls.resources.dll => 0x2904cf94 => 1
	i32 706645707, ; 34: ko/Microsoft.Maui.Controls.resources.dll => 0x2a1e8ecb => 16
	i32 709557578, ; 35: de/Microsoft.Maui.Controls.resources.dll => 0x2a4afd4a => 4
	i32 722857257, ; 36: System.Runtime.Loader.dll => 0x2b15ed29 => 110
	i32 748832960, ; 37: SQLitePCLRaw.batteries_v2 => 0x2ca248c0 => 51
	i32 759454413, ; 38: System.Net.Requests => 0x2d445acd => 103
	i32 775507847, ; 39: System.IO.Compression => 0x2e394f87 => 97
	i32 777317022, ; 40: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 25
	i32 789151979, ; 41: Microsoft.Extensions.Options => 0x2f0980eb => 41
	i32 823281589, ; 42: System.Private.Uri.dll => 0x311247b5 => 106
	i32 830298997, ; 43: System.IO.Compression.Brotli => 0x317d5b75 => 96
	i32 904024072, ; 44: System.ComponentModel.Primitives.dll => 0x35e25008 => 91
	i32 908888060, ; 45: Microsoft.Maui.Maps => 0x362c87fc => 49
	i32 926902833, ; 46: tr/Microsoft.Maui.Controls.resources.dll => 0x373f6a31 => 28
	i32 967690846, ; 47: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 66
	i32 992768348, ; 48: System.Collections.dll => 0x3b2c715c => 90
	i32 1012816738, ; 49: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 76
	i32 1028951442, ; 50: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 38
	i32 1029334545, ; 51: da/Microsoft.Maui.Controls.resources.dll => 0x3d5a6611 => 3
	i32 1035644815, ; 52: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 56
	i32 1044663988, ; 53: System.Linq.Expressions.dll => 0x3e444eb4 => 98
	i32 1052210849, ; 54: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 68
	i32 1082857460, ; 55: System.ComponentModel.TypeConverter => 0x408b17f4 => 92
	i32 1084122840, ; 56: Xamarin.Kotlin.StdLib => 0x409e66d8 => 85
	i32 1098259244, ; 57: System => 0x41761b2c => 117
	i32 1118262833, ; 58: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 16
	i32 1168523401, ; 59: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 22
	i32 1178241025, ; 60: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 73
	i32 1203215381, ; 61: pl/Microsoft.Maui.Controls.resources.dll => 0x47b79c15 => 20
	i32 1234928153, ; 62: nb/Microsoft.Maui.Controls.resources.dll => 0x499b8219 => 18
	i32 1238093509, ; 63: MapImplementation.dll => 0x49cbcec5 => 87
	i32 1260983243, ; 64: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 2
	i32 1292207520, ; 65: SQLitePCLRaw.core.dll => 0x4d0585a0 => 52
	i32 1293217323, ; 66: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 64
	i32 1324164729, ; 67: System.Linq => 0x4eed2679 => 99
	i32 1373134921, ; 68: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 32
	i32 1376866003, ; 69: Xamarin.AndroidX.SavedState => 0x52114ed3 => 76
	i32 1406073936, ; 70: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 60
	i32 1430672901, ; 71: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 0
	i32 1461004990, ; 72: es\Microsoft.Maui.Controls.resources => 0x57152abe => 6
	i32 1462112819, ; 73: System.IO.Compression.dll => 0x57261233 => 97
	i32 1469204771, ; 74: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 57
	i32 1470490898, ; 75: Microsoft.Extensions.Primitives => 0x57a5e912 => 42
	i32 1480492111, ; 76: System.IO.Compression.Brotli.dll => 0x583e844f => 96
	i32 1493001747, ; 77: hi/Microsoft.Maui.Controls.resources.dll => 0x58fd6613 => 10
	i32 1514721132, ; 78: el/Microsoft.Maui.Controls.resources.dll => 0x5a48cf6c => 5
	i32 1543031311, ; 79: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 113
	i32 1551623176, ; 80: sk/Microsoft.Maui.Controls.resources.dll => 0x5c7be408 => 25
	i32 1622152042, ; 81: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 70
	i32 1624863272, ; 82: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 79
	i32 1636350590, ; 83: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 62
	i32 1639515021, ; 84: System.Net.Http.dll => 0x61b9038d => 101
	i32 1639986890, ; 85: System.Text.RegularExpressions => 0x61c036ca => 113
	i32 1657153582, ; 86: System.Runtime => 0x62c6282e => 111
	i32 1658251792, ; 87: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 80
	i32 1677501392, ; 88: System.Net.Primitives.dll => 0x63fca3d0 => 102
	i32 1679769178, ; 89: System.Security.Cryptography => 0x641f3e5a => 112
	i32 1711441057, ; 90: SQLitePCLRaw.lib.e_sqlite3.android => 0x660284a1 => 53
	i32 1729485958, ; 91: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 58
	i32 1736233607, ; 92: ro/Microsoft.Maui.Controls.resources.dll => 0x677cd287 => 23
	i32 1743415430, ; 93: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 1
	i32 1766324549, ; 94: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 77
	i32 1770582343, ; 95: Microsoft.Extensions.Logging.dll => 0x6988f147 => 39
	i32 1780572499, ; 96: Mono.Android.Runtime.dll => 0x6a216153 => 121
	i32 1782862114, ; 97: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 17
	i32 1788241197, ; 98: Xamarin.AndroidX.Fragment => 0x6a96652d => 65
	i32 1793755602, ; 99: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 9
	i32 1808609942, ; 100: Xamarin.AndroidX.Loader => 0x6bcd3296 => 70
	i32 1813058853, ; 101: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 85
	i32 1813201214, ; 102: Xamarin.Google.Android.Material => 0x6c13413e => 80
	i32 1818569960, ; 103: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 74
	i32 1828688058, ; 104: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 40
	i32 1842015223, ; 105: uk/Microsoft.Maui.Controls.resources.dll => 0x6dcaebf7 => 29
	i32 1853025655, ; 106: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 26
	i32 1858542181, ; 107: System.Linq.Expressions => 0x6ec71a65 => 98
	i32 1875935024, ; 108: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 8
	i32 1908813208, ; 109: Xamarin.GooglePlayServices.Basement => 0x71c62d98 => 82
	i32 1910275211, ; 110: System.Collections.NonGeneric.dll => 0x71dc7c8b => 89
	i32 1968388702, ; 111: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 35
	i32 2003115576, ; 112: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 5
	i32 2019465201, ; 113: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 68
	i32 2025202353, ; 114: ar/Microsoft.Maui.Controls.resources.dll => 0x78b622b1 => 0
	i32 2045470958, ; 115: System.Private.Xml => 0x79eb68ee => 107
	i32 2055257422, ; 116: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 67
	i32 2066184531, ; 117: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 4
	i32 2079903147, ; 118: System.Runtime.dll => 0x7bf8cdab => 111
	i32 2090596640, ; 119: System.Numerics.Vectors => 0x7c9bf920 => 104
	i32 2103459038, ; 120: SQLitePCLRaw.provider.e_sqlite3.dll => 0x7d603cde => 54
	i32 2127167465, ; 121: System.Console => 0x7ec9ffe9 => 94
	i32 2129483829, ; 122: Xamarin.GooglePlayServices.Base.dll => 0x7eed5835 => 81
	i32 2159891885, ; 123: Microsoft.Maui => 0x80bd55ad => 46
	i32 2169148018, ; 124: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 12
	i32 2181898931, ; 125: Microsoft.Extensions.Options.dll => 0x820d22b3 => 41
	i32 2192057212, ; 126: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 40
	i32 2193016926, ; 127: System.ObjectModel.dll => 0x82b6c85e => 105
	i32 2201107256, ; 128: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 86
	i32 2201231467, ; 129: System.Net.Http => 0x8334206b => 101
	i32 2207618523, ; 130: it\Microsoft.Maui.Controls.resources => 0x839595db => 14
	i32 2266799131, ; 131: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 36
	i32 2270573516, ; 132: fr/Microsoft.Maui.Controls.resources.dll => 0x875633cc => 8
	i32 2279755925, ; 133: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 75
	i32 2303073227, ; 134: Microsoft.Maui.Controls.Maps.dll => 0x89461bcb => 44
	i32 2303942373, ; 135: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 18
	i32 2305521784, ; 136: System.Private.CoreLib.dll => 0x896b7878 => 119
	i32 2340441535, ; 137: System.Runtime.InteropServices.RuntimeInformation.dll => 0x8b804dbf => 108
	i32 2353062107, ; 138: System.Net.Primitives => 0x8c40e0db => 102
	i32 2368005991, ; 139: System.Xml.ReaderWriter.dll => 0x8d24e767 => 116
	i32 2371007202, ; 140: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 35
	i32 2395872292, ; 141: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 13
	i32 2427813419, ; 142: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 10
	i32 2435356389, ; 143: System.Console.dll => 0x912896e5 => 94
	i32 2465273461, ; 144: SQLitePCLRaw.batteries_v2.dll => 0x92f11675 => 51
	i32 2471841756, ; 145: netstandard.dll => 0x93554fdc => 118
	i32 2475788418, ; 146: Java.Interop.dll => 0x93918882 => 120
	i32 2480646305, ; 147: Microsoft.Maui.Controls => 0x93dba8a1 => 43
	i32 2550873716, ; 148: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 11
	i32 2593496499, ; 149: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 20
	i32 2605712449, ; 150: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 86
	i32 2617129537, ; 151: System.Private.Xml.dll => 0x9bfe3a41 => 107
	i32 2620871830, ; 152: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 62
	i32 2626831493, ; 153: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 15
	i32 2663698177, ; 154: System.Runtime.Loader => 0x9ec4cf01 => 110
	i32 2732626843, ; 155: Xamarin.AndroidX.Activity => 0xa2e0939b => 55
	i32 2737747696, ; 156: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 57
	i32 2752995522, ; 157: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 21
	i32 2758225723, ; 158: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 45
	i32 2764765095, ; 159: Microsoft.Maui.dll => 0xa4caf7a7 => 46
	i32 2778768386, ; 160: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 78
	i32 2785988530, ; 161: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 27
	i32 2801831435, ; 162: Microsoft.Maui.Graphics => 0xa7008e0b => 48
	i32 2806116107, ; 163: es/Microsoft.Maui.Controls.resources.dll => 0xa741ef0b => 6
	i32 2810250172, ; 164: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 60
	i32 2831556043, ; 165: nl/Microsoft.Maui.Controls.resources.dll => 0xa8c61dcb => 19
	i32 2847418871, ; 166: Xamarin.GooglePlayServices.Base => 0xa9b829f7 => 81
	i32 2853208004, ; 167: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 78
	i32 2861189240, ; 168: Microsoft.Maui.Essentials => 0xaa8a4878 => 47
	i32 2909740682, ; 169: System.Private.CoreLib => 0xad6f1e8a => 119
	i32 2916838712, ; 170: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 79
	i32 2919462931, ; 171: System.Numerics.Vectors.dll => 0xae037813 => 104
	i32 2959614098, ; 172: System.ComponentModel.dll => 0xb0682092 => 93
	i32 2978675010, ; 173: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 64
	i32 3017076677, ; 174: Xamarin.GooglePlayServices.Maps => 0xb3d4efc5 => 83
	i32 3038032645, ; 175: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 34
	i32 3057625584, ; 176: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 71
	i32 3058099980, ; 177: Xamarin.GooglePlayServices.Tasks => 0xb646e70c => 84
	i32 3059408633, ; 178: Mono.Android.Runtime => 0xb65adef9 => 121
	i32 3059793426, ; 179: System.ComponentModel.Primitives => 0xb660be12 => 91
	i32 3077302341, ; 180: hu/Microsoft.Maui.Controls.resources.dll => 0xb76be845 => 12
	i32 3178803400, ; 181: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 72
	i32 3220365878, ; 182: System.Threading => 0xbff2e236 => 115
	i32 3230466174, ; 183: Xamarin.GooglePlayServices.Basement.dll => 0xc08d007e => 82
	i32 3258312781, ; 184: Xamarin.AndroidX.CardView => 0xc235e84d => 58
	i32 3286872994, ; 185: SQLite-net.dll => 0xc3e9b3a2 => 50
	i32 3305363605, ; 186: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 7
	i32 3316684772, ; 187: System.Net.Requests.dll => 0xc5b097e4 => 103
	i32 3317135071, ; 188: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 63
	i32 3346324047, ; 189: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 73
	i32 3357674450, ; 190: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 24
	i32 3360279109, ; 191: SQLitePCLRaw.core => 0xc849ca45 => 52
	i32 3362522851, ; 192: Xamarin.AndroidX.Core => 0xc86c06e3 => 61
	i32 3366347497, ; 193: Java.Interop => 0xc8a662e9 => 120
	i32 3374999561, ; 194: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 75
	i32 3381016424, ; 195: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 3
	i32 3428513518, ; 196: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 37
	i32 3430777524, ; 197: netstandard => 0xcc7d82b4 => 118
	i32 3463511458, ; 198: hr/Microsoft.Maui.Controls.resources.dll => 0xce70fda2 => 11
	i32 3471940407, ; 199: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 92
	i32 3476120550, ; 200: Mono.Android => 0xcf3163e6 => 122
	i32 3479583265, ; 201: ru/Microsoft.Maui.Controls.resources.dll => 0xcf663a21 => 24
	i32 3484440000, ; 202: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 23
	i32 3500773090, ; 203: Microsoft.Maui.Controls.Maps => 0xd0a98ee2 => 44
	i32 3580758918, ; 204: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 31
	i32 3608519521, ; 205: System.Linq.dll => 0xd715a361 => 99
	i32 3624195450, ; 206: System.Runtime.InteropServices.RuntimeInformation => 0xd804d57a => 108
	i32 3641597786, ; 207: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 67
	i32 3643446276, ; 208: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 28
	i32 3643854240, ; 209: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 72
	i32 3657292374, ; 210: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 36
	i32 3672681054, ; 211: Mono.Android.dll => 0xdae8aa5e => 122
	i32 3697841164, ; 212: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xdc68940c => 33
	i32 3724971120, ; 213: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 71
	i32 3748608112, ; 214: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 95
	i32 3754567612, ; 215: SQLitePCLRaw.provider.e_sqlite3 => 0xdfca27bc => 54
	i32 3786282454, ; 216: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 59
	i32 3792276235, ; 217: System.Collections.NonGeneric => 0xe2098b0b => 89
	i32 3823082795, ; 218: System.Security.Cryptography.dll => 0xe3df9d2b => 112
	i32 3841636137, ; 219: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 38
	i32 3849253459, ; 220: System.Runtime.InteropServices.dll => 0xe56ef253 => 109
	i32 3876362041, ; 221: SQLite-net => 0xe70c9739 => 50
	i32 3889960447, ; 222: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xe7dc15ff => 32
	i32 3896106733, ; 223: System.Collections.Concurrent.dll => 0xe839deed => 88
	i32 3896760992, ; 224: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 61
	i32 3928044579, ; 225: System.Xml.ReaderWriter => 0xea213423 => 116
	i32 3931092270, ; 226: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 74
	i32 3955647286, ; 227: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 56
	i32 3970018735, ; 228: Xamarin.GooglePlayServices.Tasks.dll => 0xeca1adaf => 84
	i32 3980434154, ; 229: th/Microsoft.Maui.Controls.resources.dll => 0xed409aea => 27
	i32 3987592930, ; 230: he/Microsoft.Maui.Controls.resources.dll => 0xedadd6e2 => 9
	i32 4025784931, ; 231: System.Memory => 0xeff49a63 => 100
	i32 4046471985, ; 232: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 45
	i32 4073602200, ; 233: System.Threading.dll => 0xf2ce3c98 => 115
	i32 4094352644, ; 234: Microsoft.Maui.Essentials.dll => 0xf40add04 => 47
	i32 4100113165, ; 235: System.Private.Uri => 0xf462c30d => 106
	i32 4102112229, ; 236: pt/Microsoft.Maui.Controls.resources.dll => 0xf48143e5 => 22
	i32 4125707920, ; 237: ms/Microsoft.Maui.Controls.resources.dll => 0xf5e94e90 => 17
	i32 4126470640, ; 238: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 37
	i32 4150914736, ; 239: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 29
	i32 4182413190, ; 240: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 69
	i32 4190991637, ; 241: Microsoft.Maui.Maps.dll => 0xf9cd7515 => 49
	i32 4213026141, ; 242: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 95
	i32 4271975918, ; 243: Microsoft.Maui.Controls.dll => 0xfea12dee => 43
	i32 4278134329, ; 244: Xamarin.GooglePlayServices.Maps.dll => 0xfeff2639 => 83
	i32 4292120959 ; 245: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 69
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [246 x i32] [
	i32 114, ; 0
	i32 33, ; 1
	i32 48, ; 2
	i32 109, ; 3
	i32 59, ; 4
	i32 77, ; 5
	i32 30, ; 6
	i32 31, ; 7
	i32 93, ; 8
	i32 2, ; 9
	i32 30, ; 10
	i32 55, ; 11
	i32 15, ; 12
	i32 66, ; 13
	i32 53, ; 14
	i32 14, ; 15
	i32 114, ; 16
	i32 100, ; 17
	i32 34, ; 18
	i32 26, ; 19
	i32 90, ; 20
	i32 65, ; 21
	i32 117, ; 22
	i32 105, ; 23
	i32 13, ; 24
	i32 7, ; 25
	i32 42, ; 26
	i32 39, ; 27
	i32 87, ; 28
	i32 21, ; 29
	i32 63, ; 30
	i32 19, ; 31
	i32 88, ; 32
	i32 1, ; 33
	i32 16, ; 34
	i32 4, ; 35
	i32 110, ; 36
	i32 51, ; 37
	i32 103, ; 38
	i32 97, ; 39
	i32 25, ; 40
	i32 41, ; 41
	i32 106, ; 42
	i32 96, ; 43
	i32 91, ; 44
	i32 49, ; 45
	i32 28, ; 46
	i32 66, ; 47
	i32 90, ; 48
	i32 76, ; 49
	i32 38, ; 50
	i32 3, ; 51
	i32 56, ; 52
	i32 98, ; 53
	i32 68, ; 54
	i32 92, ; 55
	i32 85, ; 56
	i32 117, ; 57
	i32 16, ; 58
	i32 22, ; 59
	i32 73, ; 60
	i32 20, ; 61
	i32 18, ; 62
	i32 87, ; 63
	i32 2, ; 64
	i32 52, ; 65
	i32 64, ; 66
	i32 99, ; 67
	i32 32, ; 68
	i32 76, ; 69
	i32 60, ; 70
	i32 0, ; 71
	i32 6, ; 72
	i32 97, ; 73
	i32 57, ; 74
	i32 42, ; 75
	i32 96, ; 76
	i32 10, ; 77
	i32 5, ; 78
	i32 113, ; 79
	i32 25, ; 80
	i32 70, ; 81
	i32 79, ; 82
	i32 62, ; 83
	i32 101, ; 84
	i32 113, ; 85
	i32 111, ; 86
	i32 80, ; 87
	i32 102, ; 88
	i32 112, ; 89
	i32 53, ; 90
	i32 58, ; 91
	i32 23, ; 92
	i32 1, ; 93
	i32 77, ; 94
	i32 39, ; 95
	i32 121, ; 96
	i32 17, ; 97
	i32 65, ; 98
	i32 9, ; 99
	i32 70, ; 100
	i32 85, ; 101
	i32 80, ; 102
	i32 74, ; 103
	i32 40, ; 104
	i32 29, ; 105
	i32 26, ; 106
	i32 98, ; 107
	i32 8, ; 108
	i32 82, ; 109
	i32 89, ; 110
	i32 35, ; 111
	i32 5, ; 112
	i32 68, ; 113
	i32 0, ; 114
	i32 107, ; 115
	i32 67, ; 116
	i32 4, ; 117
	i32 111, ; 118
	i32 104, ; 119
	i32 54, ; 120
	i32 94, ; 121
	i32 81, ; 122
	i32 46, ; 123
	i32 12, ; 124
	i32 41, ; 125
	i32 40, ; 126
	i32 105, ; 127
	i32 86, ; 128
	i32 101, ; 129
	i32 14, ; 130
	i32 36, ; 131
	i32 8, ; 132
	i32 75, ; 133
	i32 44, ; 134
	i32 18, ; 135
	i32 119, ; 136
	i32 108, ; 137
	i32 102, ; 138
	i32 116, ; 139
	i32 35, ; 140
	i32 13, ; 141
	i32 10, ; 142
	i32 94, ; 143
	i32 51, ; 144
	i32 118, ; 145
	i32 120, ; 146
	i32 43, ; 147
	i32 11, ; 148
	i32 20, ; 149
	i32 86, ; 150
	i32 107, ; 151
	i32 62, ; 152
	i32 15, ; 153
	i32 110, ; 154
	i32 55, ; 155
	i32 57, ; 156
	i32 21, ; 157
	i32 45, ; 158
	i32 46, ; 159
	i32 78, ; 160
	i32 27, ; 161
	i32 48, ; 162
	i32 6, ; 163
	i32 60, ; 164
	i32 19, ; 165
	i32 81, ; 166
	i32 78, ; 167
	i32 47, ; 168
	i32 119, ; 169
	i32 79, ; 170
	i32 104, ; 171
	i32 93, ; 172
	i32 64, ; 173
	i32 83, ; 174
	i32 34, ; 175
	i32 71, ; 176
	i32 84, ; 177
	i32 121, ; 178
	i32 91, ; 179
	i32 12, ; 180
	i32 72, ; 181
	i32 115, ; 182
	i32 82, ; 183
	i32 58, ; 184
	i32 50, ; 185
	i32 7, ; 186
	i32 103, ; 187
	i32 63, ; 188
	i32 73, ; 189
	i32 24, ; 190
	i32 52, ; 191
	i32 61, ; 192
	i32 120, ; 193
	i32 75, ; 194
	i32 3, ; 195
	i32 37, ; 196
	i32 118, ; 197
	i32 11, ; 198
	i32 92, ; 199
	i32 122, ; 200
	i32 24, ; 201
	i32 23, ; 202
	i32 44, ; 203
	i32 31, ; 204
	i32 99, ; 205
	i32 108, ; 206
	i32 67, ; 207
	i32 28, ; 208
	i32 72, ; 209
	i32 36, ; 210
	i32 122, ; 211
	i32 33, ; 212
	i32 71, ; 213
	i32 95, ; 214
	i32 54, ; 215
	i32 59, ; 216
	i32 89, ; 217
	i32 112, ; 218
	i32 38, ; 219
	i32 109, ; 220
	i32 50, ; 221
	i32 32, ; 222
	i32 88, ; 223
	i32 61, ; 224
	i32 116, ; 225
	i32 74, ; 226
	i32 56, ; 227
	i32 84, ; 228
	i32 27, ; 229
	i32 9, ; 230
	i32 100, ; 231
	i32 45, ; 232
	i32 115, ; 233
	i32 47, ; 234
	i32 106, ; 235
	i32 22, ; 236
	i32 17, ; 237
	i32 37, ; 238
	i32 29, ; 239
	i32 69, ; 240
	i32 49, ; 241
	i32 95, ; 242
	i32 43, ; 243
	i32 83, ; 244
	i32 69 ; 245
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 4

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 4

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 4

; Functions

; Function attributes: "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 4, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 1

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }

; Metadata
!llvm.module.flags = !{!0, !1, !7}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.4xx @ df9aaf29a52042a4fbf800daf2f3a38964b9e958"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"min_enum_size", i32 4}
