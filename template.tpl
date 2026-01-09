___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "displayName": "AdRoll Smart Pixel - Official",
  "categories": ["ADVERTISING"],
  "description": "The AdRoll Pixel tag helps advertisers to use their site data in conjunction with the AdRoll platform. Visit adroll.com to learn more.",
  "securityGroups": [],
  "id": "cvt_temp_public_id",
  "type": "TAG",
  "version": 1,
  "brand": {
    "thumbnail": "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOEAAADhCAMAAAAJbSJIAAAAY1BMVEX///8Aru8Aqu7C5PkAqO4ArO9ewvMwtPDa8PwApu7N6/v1/P5qxvM+ufHE5/qAzfXo9f274/mg2Pfu+f72/P5yyPTh8/yR0/ZSv/LW7/yq3Piw3vih2fcJsO+N0vaY1vczt/GewTosAAAEPUlEQVR4nO3c65aiOhAFYMlJUBEEL3jrRn3/p5zGC622kAISqzhrf7971sqeggRIxdEIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAWM1WWZatVmvucXiwWWzjJNCVYpcu5yvuUbkyOe2MVsYEj4wxShfxIeMeXW9RHuiXcI85lR4fJ9xj7CE7Bqo2XZVSF98DvTGjUFvjXSmVb7hH216UUPNdCxkOLOMm0fR4t4zxkObWtE39qozqxD1uqnnQIV9JjYcxr8ZtL9AHess9ertN0bGAtzImM+4EFl89CnhhzJ47Q6Nj34A/9II7RYNY9Q/4E1HunLpzEvAnYsqdpEbSa44ZQMSds4BCVw0392AV8cCd54+j04BBMI24E71YOFgmnilZD+KZ4wqWxtyhnhTuAwYq5071IHc4jf7Sc+5clcj5TXjDHazi4xotGSnXqeuF4peW8Ua8mfoKGARn7nBXobcainmT8hhRyqLoL6ISUkSPEc/c0e5IEY1RF/VbNX9pMZ9trBGVDuLlYj+ZRIvtTtl3bO7/KzF3skpzRGXSp2LMQ028sLWcjamGiO8+2K9y2rOeEvQuXBtRh2/rsDmTyph8OkeDmoj6q+4fpJQyakmvwm8jqobZ8ECIqGr/gzi8iagatz4JEQXNpqU/EW3r2ZZwL35m6FQvEe0zof0zqxa2Af4U0eysfz+zFlHWjTh6jkiZB7+tT0PivvH/RjRHyt/baihqRbyqIirShu7Sdicq3wNu7xaROM/PbCuGFrjzfd2mUcQPnrbpVMn4IPXsUkVN/ONvW0I5n4YflFWkzhB7y2wq5lPGs1iRZ3nbjai+vY60s3BKHlhzwMBIbV3YkZ9FxgNNOCI/T9oSStzVb+f/n3Co9yHZeqBzKd3Eth5Ke31q7WBLKPKZpo1wiM+lrVjfLSR9T+ziy/qSzz3CviyrocR3/HYWthKKacnoylZBUXszXdj7qYT0nHRFaO433GPshdAwZkLuQfYREXYtBn0bUjbXAj3ck7TrkLTPfeYeZ2cHWj+GWXIPtJvVKaD2YgzvoXS2WRzP5COYhP05v6Ltrrh1OhFpTW8XCrjfDbPUtOrg6qJgzLeKp/66Lu84P2AQp8KeGEvY57QvHWMJE/8XaImvRdjdUcNGmu14V/6ZCvK9Vbg/qFaTkKu1dP2ZCjIeRUg/cxPyXaPW5hBH+JbC04fmUb5+PesHXDcB+fovso9cpJzH1a27DC6wtiOmH0ioWBufXf50gsiAo7P3gNy/iuF9KmX/8RbfCfnb9PwmNAV/Y77XhFrC6RGPCU0goq3EX0ItZDfbV0KdSNnq9ZNQj0VcoBceEhqdyMnnPqFRKpdyfV45TaiUCtlX+FeuEpY/Bn1OJV2dd0WrvbTaHbYkX0YCD/uU/utrHu0zOWfsAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA2vkHV9k0h8RZHL0AAAAASUVORK5CYII\u003d",
    "displayName": "",
    "id": "brand_dummy"
  },
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "displayName": "Advertisable EID",
    "simpleValueType": true,
    "name": "advertisableEid",
    "type": "TEXT"
  },
  {
    "displayName": "Pixel EID",
    "simpleValueType": true,
    "name": "pixelEid",
    "type": "TEXT"
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

const copyFromWindow = require('copyFromWindow');
const injectScript = require('injectScript');
const setInWindow = require('setInWindow');

setInWindow('adroll_adv_id', data.advertisableEid, true);
setInWindow('adroll_pix_id', data.pixelEid, true);

setInWindow('__adroll_loaded', true, true);

setInWindow('adroll_version', "2.0", true);
setInWindow('adroll_tag_source', "gtm", true);


// Initialize the adroll object with pre loaded functions so that we can
// queue a call to track() with 'pageView' even before the pixel is loaded.
let adroll = copyFromWindow('adroll') || [];
adroll.f = [ 'setProperties', 'identify', 'track', 'identify_email', 'get_cookie' ];
for (let a = 0; a < adroll.f.length; a++) {
  adroll[adroll.f[a]] = adroll[adroll.f[a]] || (function(n) { return function() { adroll.push([ n, arguments ]); }; })(adroll.f[a]);
}

// V2 pixel default snippet includes a 'pageView'
adroll.track("pageView");

setInWindow('adroll', adroll, true);

injectScript(
    'https://s.adroll.com/j/' + data.advertisableEid + '/roundtrip.js',
    data.gtmOnSuccess,
    data.gtmOnFailure);


___WEB_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "inject_script",
        "versionId": "1"
      },
      "param": [
        {
          "key": "urls",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "https://s.adroll.com/j/*/roundtrip.js"
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "access_globals",
        "versionId": "1"
      },
      "param": [
        {
          "key": "keys",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "adroll_adv_id"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "adroll_pix_id"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "__adroll_loaded"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "adroll_version"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "adroll_tag_source"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "adroll"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  }
]


___TESTS___

scenarios: []


___NOTES___

Created on 12/10/2025, 6:49:12 AM


