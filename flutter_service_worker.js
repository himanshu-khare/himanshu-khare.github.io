'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "version.json": "1ac57eb0214a8f5216f1da7dd479b33f",
"index.html": "a46d98b83f70ea1e925feb8ca7c15865",
"/": "a46d98b83f70ea1e925feb8ca7c15865",
"main.dart.js": "d3ccdea7ddbed7c93534e39ab0f2997f",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "14533758d5adebb52c270151b0335f00",
".git/config": "17b9c894eccefdc6ae35053a439029c5",
".git/objects/59/df7ce95f6435c6e35dd635aeb0e7dc155a4e8d": "cbab236e1e4baf67a762245e9cf22266",
".git/objects/0c/e7dc3c30c7b205981836e0395a59158dd2c886": "6d8f78d6acb6a36847e9e6543d476deb",
".git/objects/3e/432a152179956cfe12e2950b8ff174b71cc83e": "826b5cc9c80202498cefa215496978b0",
".git/objects/50/94172f3282168a94114cc1de48febfda0237cd": "50d1cfc6f271172e9c5a95e492662052",
".git/objects/57/5d5d2f560b2073137c47799361fbd37cf3d2a9": "03a8390da531b5ecebb805a159cdecf3",
".git/objects/57/53b644f89c454996acbdf28cd9af0898ec2aa8": "8a7bcf7f040f3be420c065f6c93832d3",
".git/objects/32/46ad559eeae0370195978eaed83f1053ee13fd": "a043dbc0a0bda96ce2127799ccc27506",
".git/objects/35/006cb08b2535f2d25c38173c7b0cedeb71445f": "d6813bbd249e7a479245efc7ffc29c3a",
".git/objects/51/d00ef1367142fcab303b936635433b616c18fa": "cf159d22d0a92cdab16488cdfb0b9213",
".git/objects/93/fe44287be6c302b1074d2447aed7e75143f6a9": "17711d63c307793e6c033d337ff5d02d",
".git/objects/05/3fe634fa4021711e60ce9d3901d193f40e3e8d": "dcb15f71cdf20d50d39eb1351bdaaf01",
".git/objects/9d/a12e52fc760d88430d6dbe2e807006fa21af5b": "0493be0ba266b7631fc07f2a40624737",
".git/objects/a3/6ba4e3325a532cd181f887a4c40a2d8b5dd218": "5a057b91b9f2a002d4a802d9c02c4723",
".git/objects/d0/b76a52b3d6ee7f73ad01be04b04e8c1f031351": "97d734d105627de61e63d155cb942fc2",
".git/objects/be/8aacdbbf40aa56612d7fc65f3e32163d77b514": "f7e8e7ea93bce549d5b33baf3bef5859",
".git/objects/d6/451bbfb9191ff4c71bedcc8d3066cf3144a36d": "71fc130fef2501f5830d95ead0a6728f",
".git/objects/bc/2dc10e1db21f6b33ef000c0a9b0b982b3faadd": "c30a887a81cdf485f61c664fcdadfe24",
".git/objects/ae/1cccc7ca6ebf26b1e4104baba791f1ee278785": "d6c9a4268f64077e9f6637d2afce5d73",
".git/objects/ab/0e98497a51ead7821d1da35a24968ff314e50f": "557c35fe3928eb2af403d1b3926bb9ba",
".git/objects/ab/915743e29570ab74ab151b1b164866e937d982": "d7a5eebd6f1f84e93bdedc1ca224b0aa",
".git/objects/e5/951dfb943474a56e611d9923405cd06c2dd28d": "c6fa51103d8db5478e1a43a661f6c68d",
".git/objects/fc/e9ee86fce96858e58dbd44ff9689997f16da12": "aa80dac4c975735d46a1108a96cbc63e",
".git/objects/f2/9b1874222b90011fc18cceb093462226b74b90": "b162bef95e4ae67a1201070fbbc211a5",
".git/objects/ed/7711fb314e2bf3987ecef4b895f0365ecc7f33": "75bae0f111e058f470b78d517eec14fe",
".git/objects/20/5bb5db271c6d8de8399864c7bb9b917f638893": "c993b22f115d7f3ae6d5b7b212806539",
".git/objects/1f/d31038aebd362878873cd6851c306da1b6c741": "02e54d48fbf6599d7ce45bd20a8f2c66",
".git/objects/87/6550d551848a0290dc40f0cb424b4dc02a7051": "71ede57d335782c9d3406d780b1ee3b7",
".git/objects/87/f054e04ed114946a8053f1e1af75ae02515ad8": "5564957db507df4c078a0fee4df56451",
".git/objects/87/748811d9bdbffffa46bb959351dcefc851eef9": "f6ae000509c1c6189205c1dffee84fb3",
".git/objects/7b/0db75a0577db85ac71b77b8185c89685a936ac": "d4d730bd9db4a2f0866ba4e87ac91297",
".git/objects/8a/aa46ac1ae21512746f852a42ba87e4165dfdd1": "1d8820d345e38b30de033aa4b5a23e7b",
".git/objects/75/c15db15b620d3460dba8113249cc1d00f7be2b": "29b2f5dd7c081a86349e8e97c27b5115",
".git/objects/88/cfd48dff1169879ba46840804b412fe02fefd6": "e42aaae6a4cbfbc9f6326f1fa9e3380c",
".git/objects/00/d2c272e6d94ac1de96622a8267bdd1022d5461": "3391f73e993df7d8ea3e1aab6001c5d4",
".git/objects/00/5ae8a029012eac12a17ec8aa91eb920ec1d8a2": "f0df17d22ca1d61550e63c7da5096480",
".git/objects/31/4844e691992a897411714ec08c1286c1a55c1b": "429350a420a2aa38aba801f304e8efeb",
".git/objects/31/67ef1af2ad4cd558e3cd18e743e643d9226029": "70573f257b6538100b5761154289578b",
".git/objects/65/647fb5bcca55e208cb176be85c26cdd9315dc2": "1d19117857b7683440941fd0eeede76f",
".git/objects/98/178bfcccccefcafd2d6acb74b2893d67c54ba1": "3139ae8ac39373df7e9e7425103d942e",
".git/objects/06/98882958adc09a1e781831a452a8b79b2e4ef8": "ae06736c69991dd40c409739e4003bec",
".git/objects/6c/c7f106e49bc1a23a6dadf8b5c6568e03321fbf": "2b4875bfc4d3919f2b0c4d4fca0c8b41",
".git/objects/39/f7646395a82947551ab93aebb6dd69f7067a06": "39e32a3cce7c245f0a6c1125f33570bc",
".git/objects/99/274415c41cdb20d5514590d42089482a27c5ef": "57c73a7d184d333682347e48a052d39d",
".git/objects/64/516fff37f074ff910bb0bfe1107cd471c60a06": "2d7c4d1534610f6e65b3f1e7e505ae2d",
".git/objects/ba/1bb82bafa364b4c5c8e878f8410b19c8d7735f": "3d040e4dd6b0a380a3f817758551526e",
".git/objects/b7/49bfef07473333cf1dd31e9eed89862a5d52aa": "36b4020dca303986cad10924774fb5dc",
".git/objects/a8/beffd3ad4fe54d6cabccf83a05477d6a986cd0": "6677888e4a051c7838b5b240c09f0981",
".git/objects/a6/4036114f937a5b98a48aa5661e7b83cd090de4": "d24d46333b397b61446413d06ea782e7",
".git/objects/a1/3837a12450aceaa5c8e807c32e781831d67a8f": "bfe4910ea01eb3d69e9520c3b42a0adf",
".git/objects/f0/9724ee15803c60280996e9c8be4daffa18c4ea": "7a7615ceeaf21ca3c7fe3026105a54af",
".git/objects/e8/ebd22175eb1a13c526b7021ee734cd102ceead": "f2dbd863d298db4a106f8816213a720b",
".git/objects/fa/dc3aae863e32ebe8398d75cf24570f03d7a908": "6ac9aa835c58dfbbe53621b2373d27dd",
".git/objects/fa/f42c9eb71115a39b5f171cf25219a8df638636": "ec02a6ceb297b44bd878adc7fe0e4c04",
".git/objects/f8/524868523be25c69d68593adfe074d216cbc54": "762b22dc09e4f8a21f9a06b5abfc5f41",
".git/objects/46/4ab5882a2234c39b1a4dbad5feba0954478155": "2e52a767dc04391de7b4d0beb32e7fc4",
".git/objects/79/ba7ea0836b93b3f178067bcd0a0945dbc26b3f": "f3e31aec622d6cf63f619aa3a6023103",
".git/objects/70/6fc3cfcca77103fde3481cdc57a689efbff79f": "9a2d24288b9dd74109f930c6f5be55f7",
".git/objects/4a/68c16bd50230b359786bfbdd16628fcc5860d9": "6cdb127138dbff2269937cc5d90dc4c3",
".git/objects/1c/2df287b51503eb907ad643fde4aaa7f274cb33": "a302ee1d9f4a5eb765b7a73c5ae6fa44",
".git/objects/82/b349301039f348952b9cba7133da5f8b368ae3": "c4a163166f94ba4d0439667b9046811d",
".git/objects/40/6ee47006db3e9cc95d267cfdf78be178ff0021": "3a54d7936368ab237962fb42dacc6cd2",
".git/HEAD": "cf7dd3ce51958c5f13fece957cc417fb",
".git/info/exclude": "036208b4a1ab4a235d75c181e685e5a3",
".git/logs/HEAD": "f97f9714d539a7e8e3fdec48cf28215f",
".git/logs/refs/heads/main": "90dca6b3ac7e295905b4b517fc0109c9",
".git/logs/refs/remotes/origin/main": "862a56c5cf502a49045d37f420ac0863",
".git/description": "a0a7c3fff21f2aea3cfa1d0316dd816c",
".git/hooks/commit-msg.sample": "579a3c1e12a1e74a98169175fb913012",
".git/hooks/pre-rebase.sample": "56e45f2bcbc8226d2b4200f7c46371bf",
".git/hooks/pre-commit.sample": "305eadbbcd6f6d2567e033ad12aabbc4",
".git/hooks/applypatch-msg.sample": "ce562e08d8098926a3862fc6e7905199",
".git/hooks/fsmonitor-watchman.sample": "ea587b0fae70333bce92257152996e70",
".git/hooks/pre-receive.sample": "2ad18ec82c20af7b5926ed9cea6aeedd",
".git/hooks/prepare-commit-msg.sample": "2b5c047bdb474555e1787db32b2d2fc5",
".git/hooks/post-update.sample": "2b7ea5cee3c49ff53d41e00785eb974c",
".git/hooks/pre-merge-commit.sample": "39cb268e2a85d436b9eb6f47614c3cbc",
".git/hooks/pre-applypatch.sample": "054f9ffb8bfe04a599751cc757226dda",
".git/hooks/pre-push.sample": "2c642152299a94e05ea26eae11993b13",
".git/hooks/update.sample": "647ae13c682f7827c22f5fc08a03674e",
".git/hooks/push-to-checkout.sample": "c7ab00c7784efeadad3ae9b228d4b4db",
".git/refs/heads/main": "0866eeafa9136e37aa3ea0f924940bb3",
".git/refs/remotes/origin/main": "0866eeafa9136e37aa3ea0f924940bb3",
".git/index": "8f3b18395e5a1d4a914cf641a10e2d75",
".git/COMMIT_EDITMSG": "a8297d555dd34879e8e48e1cf12acefa",
"assets/AssetManifest.json": "265c1219f183c862428987a31b0df57a",
"assets/NOTICES": "9d875c3d32fe7b9296d333915e263359",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/fonts/MaterialIcons-Regular.otf": "4e6447691c9509f7acdbf8a931a85ca1",
"assets/assets/images/androidos.svg": "5f4709b74bb37a3dd3857743691ed8d2",
"assets/assets/images/flutter.svg": "5c3a6308a335872a831a9f836f0e236c",
"assets/assets/images/pp.jpg": "519a6ed448574221474ebfe9a905f0af",
"assets/assets/images/whatsapp.svg": "bfb5a35a285c58712fec69aff03390f9",
"assets/assets/images/ios.svg": "7179728dda9645ae9ac4e3075c3bab1c",
"assets/assets/images/bb.png": "f209c33acffa3fba919143e046bc50da",
"assets/assets/images/upwork.svg": "f46b3d2158c72096c691d9a1bedefb46",
"assets/assets/icons/playicon.svg": "aaa20018388cac24f8852359b02442ad",
"assets/assets/icons/github.svg": "9226aa209923e38c0a6ddcb236e2bc68",
"assets/assets/icons/download.svg": "628700a3031424d215a441fab2da1731",
"assets/assets/icons/check.svg": "4220c82511cc1dfb40b8bba7d25c5f55",
"assets/assets/icons/dribble.svg": "d392567c5678d42472d2c7b766268101",
"assets/assets/icons/linkedin.svg": "5b2195ddf9e879047dd8a163c4194920",
"assets/assets/icons/twitter.svg": "a4a0163fef48a4247a305528c07bc4fa",
"assets/assets/icons/behance.svg": "35ad2d47e647d0b168e7707b2984c6b5",
"canvaskit/canvaskit.js": "62b9906717d7215a6ff4cc24efbd1b5c",
"canvaskit/profiling/canvaskit.js": "3783918f48ef691e230156c251169480",
"canvaskit/profiling/canvaskit.wasm": "6d1b0fc1ec88c3110db88caa3393c580",
"canvaskit/canvaskit.wasm": "b179ba02b7a9f61ebc108f82c5a1ecdb"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
"main.dart.js",
"index.html",
"assets/NOTICES",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}

// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
