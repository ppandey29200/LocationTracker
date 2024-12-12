; ModuleID = 'marshal_methods.arm64-v8a.ll'
source_filename = "marshal_methods.arm64-v8a.ll"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [123 x ptr] zeroinitializer, align 8

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [246 x i64] [
	i64 98382396393917666, ; 0: Microsoft.Extensions.Primitives.dll => 0x15d8644ad360ce2 => 42
	i64 120698629574877762, ; 1: Mono.Android => 0x1accec39cafe242 => 122
	i64 131669012237370309, ; 2: Microsoft.Maui.Essentials.dll => 0x1d3c844de55c3c5 => 47
	i64 196720943101637631, ; 3: System.Linq.Expressions.dll => 0x2bae4a7cd73f3ff => 98
	i64 210515253464952879, ; 4: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 59
	i64 232391251801502327, ; 5: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 76
	i64 545109961164950392, ; 6: fi/Microsoft.Maui.Controls.resources.dll => 0x7909e9f1ec38b78 => 7
	i64 590337075967009532, ; 7: Microsoft.Maui.Maps.dll => 0x8314c715ec1a2fc => 49
	i64 687654259221141486, ; 8: Xamarin.GooglePlayServices.Base => 0x98b09e7c92917ee => 81
	i64 750875890346172408, ; 9: System.Threading.Thread => 0xa6ba5a4da7d1ff8 => 114
	i64 799765834175365804, ; 10: System.ComponentModel.dll => 0xb1956c9f18442ac => 93
	i64 849051935479314978, ; 11: hi/Microsoft.Maui.Controls.resources.dll => 0xbc8703ca21a3a22 => 10
	i64 870603111519317375, ; 12: SQLitePCLRaw.lib.e_sqlite3.android => 0xc1500ead2756d7f => 53
	i64 872800313462103108, ; 13: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 64
	i64 1120440138749646132, ; 14: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 80
	i64 1121665720830085036, ; 15: nb/Microsoft.Maui.Controls.resources.dll => 0xf90f507becf47ac => 18
	i64 1301485588176585670, ; 16: SQLitePCLRaw.core => 0x120fce3f338e43c6 => 52
	i64 1369545283391376210, ; 17: Xamarin.AndroidX.Navigation.Fragment.dll => 0x13019a2dd85acb52 => 72
	i64 1476839205573959279, ; 18: System.Net.Primitives.dll => 0x147ec96ece9b1e6f => 102
	i64 1486715745332614827, ; 19: Microsoft.Maui.Controls.dll => 0x14a1e017ea87d6ab => 43
	i64 1513467482682125403, ; 20: Mono.Android.Runtime => 0x1500eaa8245f6c5b => 121
	i64 1518315023656898250, ; 21: SQLitePCLRaw.provider.e_sqlite3 => 0x151223783a354eca => 54
	i64 1537168428375924959, ; 22: System.Threading.Thread.dll => 0x15551e8a954ae0df => 114
	i64 1556147632182429976, ; 23: ko/Microsoft.Maui.Controls.resources.dll => 0x15988c06d24c8918 => 16
	i64 1624659445732251991, ; 24: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 57
	i64 1628611045998245443, ; 25: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 69
	i64 1743969030606105336, ; 26: System.Memory.dll => 0x1833d297e88f2af8 => 100
	i64 1767386781656293639, ; 27: System.Private.Uri.dll => 0x188704e9f5582107 => 106
	i64 1795316252682057001, ; 28: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 56
	i64 1825687700144851180, ; 29: System.Runtime.InteropServices.RuntimeInformation.dll => 0x1956254a55ef08ec => 108
	i64 1835311033149317475, ; 30: es\Microsoft.Maui.Controls.resources => 0x197855a927386163 => 6
	i64 1836611346387731153, ; 31: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 76
	i64 1880385656626454048, ; 32: MapImplementation.dll => 0x1a1878cabff59e20 => 87
	i64 1881198190668717030, ; 33: tr\Microsoft.Maui.Controls.resources => 0x1a1b5bc992ea9be6 => 28
	i64 1920760634179481754, ; 34: Microsoft.Maui.Controls.Xaml => 0x1aa7e99ec2d2709a => 45
	i64 1959996714666907089, ; 35: tr/Microsoft.Maui.Controls.resources.dll => 0x1b334ea0a2a755d1 => 28
	i64 1981742497975770890, ; 36: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 68
	i64 1983698669889758782, ; 37: cs/Microsoft.Maui.Controls.resources.dll => 0x1b87836e2031a63e => 2
	i64 2019660174692588140, ; 38: pl/Microsoft.Maui.Controls.resources.dll => 0x1c07463a6f8e1a6c => 20
	i64 2262844636196693701, ; 39: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 64
	i64 2287834202362508563, ; 40: System.Collections.Concurrent => 0x1fc00515e8ce7513 => 88
	i64 2302323944321350744, ; 41: ru/Microsoft.Maui.Controls.resources.dll => 0x1ff37f6ddb267c58 => 24
	i64 2329709569556905518, ; 42: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 67
	i64 2470498323731680442, ; 43: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 60
	i64 2497223385847772520, ; 44: System.Runtime => 0x22a7eb7046413568 => 111
	i64 2547086958574651984, ; 45: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 55
	i64 2602673633151553063, ; 46: th\Microsoft.Maui.Controls.resources => 0x241e8de13a460e27 => 27
	i64 2628077013500129233, ; 47: MapImplementation => 0x2478ce1ea00b6fd1 => 87
	i64 2656907746661064104, ; 48: Microsoft.Extensions.DependencyInjection => 0x24df3b84c8b75da8 => 37
	i64 2662981627730767622, ; 49: cs\Microsoft.Maui.Controls.resources => 0x24f4cfae6c48af06 => 2
	i64 2895129759130297543, ; 50: fi\Microsoft.Maui.Controls.resources => 0x282d912d479fa4c7 => 7
	i64 3017704767998173186, ; 51: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 80
	i64 3289520064315143713, ; 52: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 66
	i64 3311221304742556517, ; 53: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 104
	i64 3344514922410554693, ; 54: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x2e6a1a9a18463545 => 86
	i64 3411255996856937470, ; 55: Xamarin.GooglePlayServices.Basement => 0x2f5737416a942bfe => 82
	i64 3429672777697402584, ; 56: Microsoft.Maui.Essentials => 0x2f98a5385a7b1ed8 => 47
	i64 3494946837667399002, ; 57: Microsoft.Extensions.Configuration => 0x30808ba1c00a455a => 35
	i64 3522470458906976663, ; 58: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 77
	i64 3551103847008531295, ; 59: System.Private.CoreLib.dll => 0x31480e226177735f => 119
	i64 3567343442040498961, ; 60: pt\Microsoft.Maui.Controls.resources => 0x3181bff5bea4ab11 => 22
	i64 3571415421602489686, ; 61: System.Runtime.dll => 0x319037675df7e556 => 111
	i64 3638003163729360188, ; 62: Microsoft.Extensions.Configuration.Abstractions => 0x327cc89a39d5f53c => 36
	i64 3647754201059316852, ; 63: System.Xml.ReaderWriter => 0x329f6d1e86145474 => 116
	i64 3655542548057982301, ; 64: Microsoft.Extensions.Configuration.dll => 0x32bb18945e52855d => 35
	i64 3716579019761409177, ; 65: netstandard.dll => 0x3393f0ed5c8c5c99 => 118
	i64 3727469159507183293, ; 66: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 75
	i64 3869221888984012293, ; 67: Microsoft.Extensions.Logging.dll => 0x35b23cceda0ed605 => 39
	i64 3890352374528606784, ; 68: Microsoft.Maui.Controls.Xaml.dll => 0x35fd4edf66e00240 => 45
	i64 3933965368022646939, ; 69: System.Net.Requests => 0x369840a8bfadc09b => 103
	i64 3966267475168208030, ; 70: System.Memory => 0x370b03412596249e => 100
	i64 4073500526318903918, ; 71: System.Private.Xml.dll => 0x3887fb25779ae26e => 107
	i64 4120493066591692148, ; 72: zh-Hant\Microsoft.Maui.Controls.resources => 0x392eee9cdda86574 => 33
	i64 4154383907710350974, ; 73: System.ComponentModel => 0x39a7562737acb67e => 93
	i64 4187479170553454871, ; 74: System.Linq.Expressions => 0x3a1cea1e912fa117 => 98
	i64 4205801962323029395, ; 75: System.ComponentModel.TypeConverter => 0x3a5e0299f7e7ad93 => 92
	i64 4247996603072512073, ; 76: Xamarin.GooglePlayServices.Tasks => 0x3af3ea6755340049 => 84
	i64 4337444564132831293, ; 77: SQLitePCLRaw.batteries_v2.dll => 0x3c31b2d9ae16203d => 51
	i64 4356591372459378815, ; 78: vi/Microsoft.Maui.Controls.resources.dll => 0x3c75b8c562f9087f => 30
	i64 4679594760078841447, ; 79: ar/Microsoft.Maui.Controls.resources.dll => 0x40f142a407475667 => 0
	i64 4794310189461587505, ; 80: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 55
	i64 4795410492532947900, ; 81: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 77
	i64 4853321196694829351, ; 82: System.Runtime.Loader.dll => 0x435a75ea15de7927 => 110
	i64 5290786973231294105, ; 83: System.Runtime.Loader => 0x496ca6b869b72699 => 110
	i64 5423376490970181369, ; 84: System.Runtime.InteropServices.RuntimeInformation => 0x4b43b42f2b7b6ef9 => 108
	i64 5471532531798518949, ; 85: sv\Microsoft.Maui.Controls.resources => 0x4beec9d926d82ca5 => 26
	i64 5522859530602327440, ; 86: uk\Microsoft.Maui.Controls.resources => 0x4ca5237b51eead90 => 29
	i64 5570799893513421663, ; 87: System.IO.Compression.Brotli => 0x4d4f74fcdfa6c35f => 96
	i64 5573260873512690141, ; 88: System.Security.Cryptography.dll => 0x4d58333c6e4ea1dd => 112
	i64 5573669443803475672, ; 89: Microsoft.Maui.Controls.Maps => 0x4d59a6d41d5aeed8 => 44
	i64 5692067934154308417, ; 90: Xamarin.AndroidX.ViewPager2.dll => 0x4efe49a0d4a8bb41 => 79
	i64 6068057819846744445, ; 91: ro/Microsoft.Maui.Controls.resources.dll => 0x5436126fec7f197d => 23
	i64 6183170893902868313, ; 92: SQLitePCLRaw.batteries_v2 => 0x55cf092b0c9d6f59 => 51
	i64 6200764641006662125, ; 93: ro\Microsoft.Maui.Controls.resources => 0x560d8a96830131ed => 23
	i64 6357457916754632952, ; 94: _Microsoft.Android.Resource.Designer => 0x583a3a4ac2a7a0f8 => 34
	i64 6401687960814735282, ; 95: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 67
	i64 6478287442656530074, ; 96: hr\Microsoft.Maui.Controls.resources => 0x59e7801b0c6a8e9a => 11
	i64 6548213210057960872, ; 97: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 63
	i64 6560151584539558821, ; 98: Microsoft.Extensions.Options => 0x5b0a571be53243a5 => 41
	i64 6743165466166707109, ; 99: nl\Microsoft.Maui.Controls.resources => 0x5d948943c08c43a5 => 19
	i64 6777482997383978746, ; 100: pt/Microsoft.Maui.Controls.resources.dll => 0x5e0e74e0a2525efa => 22
	i64 6894844156784520562, ; 101: System.Numerics.Vectors => 0x5faf683aead1ad72 => 104
	i64 7141281584637745974, ; 102: Xamarin.GooglePlayServices.Maps.dll => 0x631aedc3dd5f1b36 => 83
	i64 7220009545223068405, ; 103: sv/Microsoft.Maui.Controls.resources.dll => 0x6432a06d99f35af5 => 26
	i64 7270811800166795866, ; 104: System.Linq => 0x64e71ccf51a90a5a => 99
	i64 7377312882064240630, ; 105: System.ComponentModel.TypeConverter.dll => 0x66617afac45a2ff6 => 92
	i64 7489048572193775167, ; 106: System.ObjectModel => 0x67ee71ff6b419e3f => 105
	i64 7654504624184590948, ; 107: System.Net.Http => 0x6a3a4366801b8264 => 101
	i64 7708790323521193081, ; 108: ms/Microsoft.Maui.Controls.resources.dll => 0x6afb1ff4d1730479 => 17
	i64 7714652370974252055, ; 109: System.Private.CoreLib => 0x6b0ff375198b9c17 => 119
	i64 7735352534559001595, ; 110: Xamarin.Kotlin.StdLib.dll => 0x6b597e2582ce8bfb => 85
	i64 7836164640616011524, ; 111: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 57
	i64 8064050204834738623, ; 112: System.Collections.dll => 0x6fe942efa61731bf => 90
	i64 8083354569033831015, ; 113: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 66
	i64 8087206902342787202, ; 114: System.Diagnostics.DiagnosticSource => 0x703b87d46f3aa082 => 95
	i64 8167236081217502503, ; 115: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 120
	i64 8185542183669246576, ; 116: System.Collections => 0x7198e33f4794aa70 => 90
	i64 8246048515196606205, ; 117: Microsoft.Maui.Graphics.dll => 0x726fd96f64ee56fd => 48
	i64 8368701292315763008, ; 118: System.Security.Cryptography => 0x7423997c6fd56140 => 112
	i64 8400357532724379117, ; 119: Xamarin.AndroidX.Navigation.UI.dll => 0x749410ab44503ded => 74
	i64 8563666267364444763, ; 120: System.Private.Uri => 0x76d841191140ca5b => 106
	i64 8614108721271900878, ; 121: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x778b763e14018ace => 21
	i64 8626175481042262068, ; 122: Java.Interop => 0x77b654e585b55834 => 120
	i64 8639588376636138208, ; 123: Xamarin.AndroidX.Navigation.Runtime => 0x77e5fbdaa2fda2e0 => 73
	i64 8677882282824630478, ; 124: pt-BR\Microsoft.Maui.Controls.resources => 0x786e07f5766b00ce => 21
	i64 8725526185868997716, ; 125: System.Diagnostics.DiagnosticSource.dll => 0x79174bd613173454 => 95
	i64 9045785047181495996, ; 126: zh-HK\Microsoft.Maui.Controls.resources => 0x7d891592e3cb0ebc => 31
	i64 9312692141327339315, ; 127: Xamarin.AndroidX.ViewPager2 => 0x813d54296a634f33 => 79
	i64 9324707631942237306, ; 128: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 56
	i64 9659729154652888475, ; 129: System.Text.RegularExpressions => 0x860e407c9991dd9b => 113
	i64 9678050649315576968, ; 130: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 60
	i64 9702891218465930390, ; 131: System.Collections.NonGeneric.dll => 0x86a79827b2eb3c96 => 89
	i64 9808709177481450983, ; 132: Mono.Android.dll => 0x881f890734e555e7 => 122
	i64 9875200773399460291, ; 133: Xamarin.GooglePlayServices.Base.dll => 0x890bc2c8482339c3 => 81
	i64 9956195530459977388, ; 134: Microsoft.Maui => 0x8a2b8315b36616ac => 46
	i64 9991543690424095600, ; 135: es/Microsoft.Maui.Controls.resources.dll => 0x8aa9180c89861370 => 6
	i64 10038780035334861115, ; 136: System.Net.Http.dll => 0x8b50e941206af13b => 101
	i64 10051358222726253779, ; 137: System.Private.Xml => 0x8b7d990c97ccccd3 => 107
	i64 10092835686693276772, ; 138: Microsoft.Maui.Controls => 0x8c10f49539bd0c64 => 43
	i64 10143853363526200146, ; 139: da\Microsoft.Maui.Controls.resources => 0x8cc634e3c2a16b52 => 3
	i64 10229024438826829339, ; 140: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 63
	i64 10406448008575299332, ; 141: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x906b2153fcb3af04 => 86
	i64 10430153318873392755, ; 142: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 61
	i64 10506226065143327199, ; 143: ca\Microsoft.Maui.Controls.resources => 0x91cd9cf11ed169df => 1
	i64 10785150219063592792, ; 144: System.Net.Primitives => 0x95ac8cfb68830758 => 102
	i64 11002576679268595294, ; 145: Microsoft.Extensions.Logging.Abstractions => 0x98b1013215cd365e => 40
	i64 11009005086950030778, ; 146: Microsoft.Maui.dll => 0x98c7d7cc621ffdba => 46
	i64 11103970607964515343, ; 147: hu\Microsoft.Maui.Controls.resources => 0x9a193a6fc41a6c0f => 12
	i64 11162124722117608902, ; 148: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 78
	i64 11220793807500858938, ; 149: ja\Microsoft.Maui.Controls.resources => 0x9bb8448481fdd63a => 15
	i64 11226290749488709958, ; 150: Microsoft.Extensions.Options.dll => 0x9bcbcbf50c874146 => 41
	i64 11340910727871153756, ; 151: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 62
	i64 11485890710487134646, ; 152: System.Runtime.InteropServices => 0x9f6614bf0f8b71b6 => 109
	i64 11518296021396496455, ; 153: id\Microsoft.Maui.Controls.resources => 0x9fd9353475222047 => 13
	i64 11529969570048099689, ; 154: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 78
	i64 11530571088791430846, ; 155: Microsoft.Extensions.Logging => 0xa004d1504ccd66be => 39
	i64 11597940890313164233, ; 156: netstandard => 0xa0f429ca8d1805c9 => 118
	i64 11705530742807338875, ; 157: he/Microsoft.Maui.Controls.resources.dll => 0xa272663128721f7b => 9
	i64 11739066727115742305, ; 158: SQLite-net.dll => 0xa2e98afdf8575c61 => 50
	i64 11806260347154423189, ; 159: SQLite-net => 0xa3d8433bc5eb5d95 => 50
	i64 12279246230491828964, ; 160: SQLitePCLRaw.provider.e_sqlite3.dll => 0xaa68a5636e0512e4 => 54
	i64 12451044538927396471, ; 161: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 65
	i64 12466513435562512481, ; 162: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 70
	i64 12475113361194491050, ; 163: _Microsoft.Android.Resource.Designer.dll => 0xad2081818aba1caa => 34
	i64 12538491095302438457, ; 164: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 58
	i64 12550732019250633519, ; 165: System.IO.Compression => 0xae2d28465e8e1b2f => 97
	i64 12681088699309157496, ; 166: it/Microsoft.Maui.Controls.resources.dll => 0xaffc46fc178aec78 => 14
	i64 12700543734426720211, ; 167: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 59
	i64 12823819093633476069, ; 168: th/Microsoft.Maui.Controls.resources.dll => 0xb1f75b85abe525e5 => 27
	i64 12843321153144804894, ; 169: Microsoft.Extensions.Primitives => 0xb23ca48abd74d61e => 42
	i64 13221551921002590604, ; 170: ca/Microsoft.Maui.Controls.resources.dll => 0xb77c636bdebe318c => 1
	i64 13222659110913276082, ; 171: ja/Microsoft.Maui.Controls.resources.dll => 0xb78052679c1178b2 => 15
	i64 13343850469010654401, ; 172: Mono.Android.Runtime.dll => 0xb92ee14d854f44c1 => 121
	i64 13381594904270902445, ; 173: he\Microsoft.Maui.Controls.resources => 0xb9b4f9aaad3e94ad => 9
	i64 13465488254036897740, ; 174: Xamarin.Kotlin.StdLib => 0xbadf06394d106fcc => 85
	i64 13467053111158216594, ; 175: uk/Microsoft.Maui.Controls.resources.dll => 0xbae49573fde79792 => 29
	i64 13540124433173649601, ; 176: vi\Microsoft.Maui.Controls.resources => 0xbbe82f6eede718c1 => 30
	i64 13545416393490209236, ; 177: id/Microsoft.Maui.Controls.resources.dll => 0xbbfafc7174bc99d4 => 13
	i64 13572454107664307259, ; 178: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 75
	i64 13717397318615465333, ; 179: System.ComponentModel.Primitives.dll => 0xbe5dfc2ef2f87d75 => 91
	i64 13755568601956062840, ; 180: fr/Microsoft.Maui.Controls.resources.dll => 0xbee598c36b1b9678 => 8
	i64 13814445057219246765, ; 181: hr/Microsoft.Maui.Controls.resources.dll => 0xbfb6c49664b43aad => 11
	i64 13881769479078963060, ; 182: System.Console.dll => 0xc0a5f3cade5c6774 => 94
	i64 13959074834287824816, ; 183: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 65
	i64 14100563506285742564, ; 184: da/Microsoft.Maui.Controls.resources.dll => 0xc3af43cd0cff89e4 => 3
	i64 14124974489674258913, ; 185: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 58
	i64 14125464355221830302, ; 186: System.Threading.dll => 0xc407bafdbc707a9e => 115
	i64 14461014870687870182, ; 187: System.Net.Requests.dll => 0xc8afd8683afdece6 => 103
	i64 14464374589798375073, ; 188: ru\Microsoft.Maui.Controls.resources => 0xc8bbc80dcb1e5ea1 => 24
	i64 14522721392235705434, ; 189: el/Microsoft.Maui.Controls.resources.dll => 0xc98b12295c2cf45a => 5
	i64 14669215534098758659, ; 190: Microsoft.Extensions.DependencyInjection.dll => 0xcb9385ceb3993c03 => 37
	i64 14705122255218365489, ; 191: ko\Microsoft.Maui.Controls.resources => 0xcc1316c7b0fb5431 => 16
	i64 14744092281598614090, ; 192: zh-Hans\Microsoft.Maui.Controls.resources => 0xcc9d89d004439a4a => 32
	i64 14852515768018889994, ; 193: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 62
	i64 14892012299694389861, ; 194: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xceab0e490a083a65 => 33
	i64 14904040806490515477, ; 195: ar\Microsoft.Maui.Controls.resources => 0xced5ca2604cb2815 => 0
	i64 14954917835170835695, ; 196: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xcf8a8a895a82ecef => 38
	i64 14987728460634540364, ; 197: System.IO.Compression.dll => 0xcfff1ba06622494c => 97
	i64 15076659072870671916, ; 198: System.ObjectModel.dll => 0xd13b0d8c1620662c => 105
	i64 15111608613780139878, ; 199: ms\Microsoft.Maui.Controls.resources => 0xd1b737f831192f66 => 17
	i64 15115185479366240210, ; 200: System.IO.Compression.Brotli.dll => 0xd1c3ed1c1bc467d2 => 96
	i64 15133485256822086103, ; 201: System.Linq.dll => 0xd204f0a9127dd9d7 => 99
	i64 15227001540531775957, ; 202: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd3512d3999b8e9d5 => 36
	i64 15370334346939861994, ; 203: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 61
	i64 15391712275433856905, ; 204: Microsoft.Extensions.DependencyInjection.Abstractions => 0xd59a58c406411f89 => 38
	i64 15527772828719725935, ; 205: System.Console => 0xd77dbb1e38cd3d6f => 94
	i64 15536481058354060254, ; 206: de\Microsoft.Maui.Controls.resources => 0xd79cab34eec75bde => 4
	i64 15582737692548360875, ; 207: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 69
	i64 15609085926864131306, ; 208: System.dll => 0xd89e9cf3334914ea => 117
	i64 15661133872274321916, ; 209: System.Xml.ReaderWriter.dll => 0xd9578647d4bfb1fc => 116
	i64 15664356999916475676, ; 210: de/Microsoft.Maui.Controls.resources.dll => 0xd962f9b2b6ecd51c => 4
	i64 15743187114543869802, ; 211: hu/Microsoft.Maui.Controls.resources.dll => 0xda7b09450ae4ef6a => 12
	i64 15783653065526199428, ; 212: el\Microsoft.Maui.Controls.resources => 0xdb0accd674b1c484 => 5
	i64 15930129725311349754, ; 213: Xamarin.GooglePlayServices.Tasks.dll => 0xdd1330956f12f3fa => 84
	i64 16154507427712707110, ; 214: System => 0xe03056ea4e39aa26 => 117
	i64 16182611612321266217, ; 215: Microsoft.Maui.Maps => 0xe0942f85b2853a29 => 49
	i64 16288847719894691167, ; 216: nb\Microsoft.Maui.Controls.resources => 0xe20d9cb300c12d5f => 18
	i64 16321164108206115771, ; 217: Microsoft.Extensions.Logging.Abstractions.dll => 0xe2806c487e7b0bbb => 40
	i64 16649148416072044166, ; 218: Microsoft.Maui.Graphics => 0xe70da84600bb4e86 => 48
	i64 16677317093839702854, ; 219: Xamarin.AndroidX.Navigation.UI => 0xe771bb8960dd8b46 => 74
	i64 16755018182064898362, ; 220: SQLitePCLRaw.core.dll => 0xe885c843c330813a => 52
	i64 16890310621557459193, ; 221: System.Text.RegularExpressions.dll => 0xea66700587f088f9 => 113
	i64 16942731696432749159, ; 222: sk\Microsoft.Maui.Controls.resources => 0xeb20acb622a01a67 => 25
	i64 16998075588627545693, ; 223: Xamarin.AndroidX.Navigation.Fragment => 0xebe54bb02d623e5d => 72
	i64 17008137082415910100, ; 224: System.Collections.NonGeneric => 0xec090a90408c8cd4 => 89
	i64 17027804579603049667, ; 225: Microsoft.Maui.Controls.Maps.dll => 0xec4eea0c48026cc3 => 44
	i64 17031351772568316411, ; 226: Xamarin.AndroidX.Navigation.Common.dll => 0xec5b843380a769fb => 71
	i64 17062143951396181894, ; 227: System.ComponentModel.Primitives => 0xecc8e986518c9786 => 91
	i64 17089008752050867324, ; 228: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xed285aeb25888c7c => 32
	i64 17342750010158924305, ; 229: hi\Microsoft.Maui.Controls.resources => 0xf0add33f97ecc211 => 10
	i64 17438153253682247751, ; 230: sk/Microsoft.Maui.Controls.resources.dll => 0xf200c3fe308d7847 => 25
	i64 17514990004910432069, ; 231: fr\Microsoft.Maui.Controls.resources => 0xf311be9c6f341f45 => 8
	i64 17623389608345532001, ; 232: pl\Microsoft.Maui.Controls.resources => 0xf492db79dfbef661 => 20
	i64 17702523067201099846, ; 233: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xf5abfef008ae1846 => 31
	i64 17704177640604968747, ; 234: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 70
	i64 17710060891934109755, ; 235: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 68
	i64 17712670374920797664, ; 236: System.Runtime.InteropServices.dll => 0xf5d00bdc38bd3de0 => 109
	i64 17969331831154222830, ; 237: Xamarin.GooglePlayServices.Maps => 0xf95fe418471126ee => 83
	i64 17986907704309214542, ; 238: Xamarin.GooglePlayServices.Basement.dll => 0xf99e554223166d4e => 82
	i64 18025913125965088385, ; 239: System.Threading => 0xfa28e87b91334681 => 115
	i64 18099568558057551825, ; 240: nl/Microsoft.Maui.Controls.resources.dll => 0xfb2e95b53ad977d1 => 19
	i64 18121036031235206392, ; 241: Xamarin.AndroidX.Navigation.Common => 0xfb7ada42d3d42cf8 => 71
	i64 18245806341561545090, ; 242: System.Collections.Concurrent.dll => 0xfd3620327d587182 => 88
	i64 18305135509493619199, ; 243: Xamarin.AndroidX.Navigation.Runtime.dll => 0xfe08e7c2d8c199ff => 73
	i64 18324163916253801303, ; 244: it\Microsoft.Maui.Controls.resources => 0xfe4c81ff0a56ab57 => 14
	i64 18370042311372477656 ; 245: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0xfeef80274e4094d8 => 53
], align 8

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [246 x i32] [
	i32 42, ; 0
	i32 122, ; 1
	i32 47, ; 2
	i32 98, ; 3
	i32 59, ; 4
	i32 76, ; 5
	i32 7, ; 6
	i32 49, ; 7
	i32 81, ; 8
	i32 114, ; 9
	i32 93, ; 10
	i32 10, ; 11
	i32 53, ; 12
	i32 64, ; 13
	i32 80, ; 14
	i32 18, ; 15
	i32 52, ; 16
	i32 72, ; 17
	i32 102, ; 18
	i32 43, ; 19
	i32 121, ; 20
	i32 54, ; 21
	i32 114, ; 22
	i32 16, ; 23
	i32 57, ; 24
	i32 69, ; 25
	i32 100, ; 26
	i32 106, ; 27
	i32 56, ; 28
	i32 108, ; 29
	i32 6, ; 30
	i32 76, ; 31
	i32 87, ; 32
	i32 28, ; 33
	i32 45, ; 34
	i32 28, ; 35
	i32 68, ; 36
	i32 2, ; 37
	i32 20, ; 38
	i32 64, ; 39
	i32 88, ; 40
	i32 24, ; 41
	i32 67, ; 42
	i32 60, ; 43
	i32 111, ; 44
	i32 55, ; 45
	i32 27, ; 46
	i32 87, ; 47
	i32 37, ; 48
	i32 2, ; 49
	i32 7, ; 50
	i32 80, ; 51
	i32 66, ; 52
	i32 104, ; 53
	i32 86, ; 54
	i32 82, ; 55
	i32 47, ; 56
	i32 35, ; 57
	i32 77, ; 58
	i32 119, ; 59
	i32 22, ; 60
	i32 111, ; 61
	i32 36, ; 62
	i32 116, ; 63
	i32 35, ; 64
	i32 118, ; 65
	i32 75, ; 66
	i32 39, ; 67
	i32 45, ; 68
	i32 103, ; 69
	i32 100, ; 70
	i32 107, ; 71
	i32 33, ; 72
	i32 93, ; 73
	i32 98, ; 74
	i32 92, ; 75
	i32 84, ; 76
	i32 51, ; 77
	i32 30, ; 78
	i32 0, ; 79
	i32 55, ; 80
	i32 77, ; 81
	i32 110, ; 82
	i32 110, ; 83
	i32 108, ; 84
	i32 26, ; 85
	i32 29, ; 86
	i32 96, ; 87
	i32 112, ; 88
	i32 44, ; 89
	i32 79, ; 90
	i32 23, ; 91
	i32 51, ; 92
	i32 23, ; 93
	i32 34, ; 94
	i32 67, ; 95
	i32 11, ; 96
	i32 63, ; 97
	i32 41, ; 98
	i32 19, ; 99
	i32 22, ; 100
	i32 104, ; 101
	i32 83, ; 102
	i32 26, ; 103
	i32 99, ; 104
	i32 92, ; 105
	i32 105, ; 106
	i32 101, ; 107
	i32 17, ; 108
	i32 119, ; 109
	i32 85, ; 110
	i32 57, ; 111
	i32 90, ; 112
	i32 66, ; 113
	i32 95, ; 114
	i32 120, ; 115
	i32 90, ; 116
	i32 48, ; 117
	i32 112, ; 118
	i32 74, ; 119
	i32 106, ; 120
	i32 21, ; 121
	i32 120, ; 122
	i32 73, ; 123
	i32 21, ; 124
	i32 95, ; 125
	i32 31, ; 126
	i32 79, ; 127
	i32 56, ; 128
	i32 113, ; 129
	i32 60, ; 130
	i32 89, ; 131
	i32 122, ; 132
	i32 81, ; 133
	i32 46, ; 134
	i32 6, ; 135
	i32 101, ; 136
	i32 107, ; 137
	i32 43, ; 138
	i32 3, ; 139
	i32 63, ; 140
	i32 86, ; 141
	i32 61, ; 142
	i32 1, ; 143
	i32 102, ; 144
	i32 40, ; 145
	i32 46, ; 146
	i32 12, ; 147
	i32 78, ; 148
	i32 15, ; 149
	i32 41, ; 150
	i32 62, ; 151
	i32 109, ; 152
	i32 13, ; 153
	i32 78, ; 154
	i32 39, ; 155
	i32 118, ; 156
	i32 9, ; 157
	i32 50, ; 158
	i32 50, ; 159
	i32 54, ; 160
	i32 65, ; 161
	i32 70, ; 162
	i32 34, ; 163
	i32 58, ; 164
	i32 97, ; 165
	i32 14, ; 166
	i32 59, ; 167
	i32 27, ; 168
	i32 42, ; 169
	i32 1, ; 170
	i32 15, ; 171
	i32 121, ; 172
	i32 9, ; 173
	i32 85, ; 174
	i32 29, ; 175
	i32 30, ; 176
	i32 13, ; 177
	i32 75, ; 178
	i32 91, ; 179
	i32 8, ; 180
	i32 11, ; 181
	i32 94, ; 182
	i32 65, ; 183
	i32 3, ; 184
	i32 58, ; 185
	i32 115, ; 186
	i32 103, ; 187
	i32 24, ; 188
	i32 5, ; 189
	i32 37, ; 190
	i32 16, ; 191
	i32 32, ; 192
	i32 62, ; 193
	i32 33, ; 194
	i32 0, ; 195
	i32 38, ; 196
	i32 97, ; 197
	i32 105, ; 198
	i32 17, ; 199
	i32 96, ; 200
	i32 99, ; 201
	i32 36, ; 202
	i32 61, ; 203
	i32 38, ; 204
	i32 94, ; 205
	i32 4, ; 206
	i32 69, ; 207
	i32 117, ; 208
	i32 116, ; 209
	i32 4, ; 210
	i32 12, ; 211
	i32 5, ; 212
	i32 84, ; 213
	i32 117, ; 214
	i32 49, ; 215
	i32 18, ; 216
	i32 40, ; 217
	i32 48, ; 218
	i32 74, ; 219
	i32 52, ; 220
	i32 113, ; 221
	i32 25, ; 222
	i32 72, ; 223
	i32 89, ; 224
	i32 44, ; 225
	i32 71, ; 226
	i32 91, ; 227
	i32 32, ; 228
	i32 10, ; 229
	i32 25, ; 230
	i32 8, ; 231
	i32 20, ; 232
	i32 31, ; 233
	i32 70, ; 234
	i32 68, ; 235
	i32 109, ; 236
	i32 83, ; 237
	i32 82, ; 238
	i32 115, ; 239
	i32 19, ; 240
	i32 71, ; 241
	i32 88, ; 242
	i32 73, ; 243
	i32 14, ; 244
	i32 53 ; 245
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 8

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 8

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 8

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
	store ptr %fn, ptr @get_function_pointer, align 8, !tbaa !3
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
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fix-cortex-a53-835769,+neon,+outline-atomics,+v8a" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fix-cortex-a53-835769,+neon,+outline-atomics,+v8a" }

; Metadata
!llvm.module.flags = !{!0, !1, !7, !8, !9, !10}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.4xx @ df9aaf29a52042a4fbf800daf2f3a38964b9e958"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"branch-target-enforcement", i32 0}
!8 = !{i32 1, !"sign-return-address", i32 0}
!9 = !{i32 1, !"sign-return-address-all", i32 0}
!10 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
