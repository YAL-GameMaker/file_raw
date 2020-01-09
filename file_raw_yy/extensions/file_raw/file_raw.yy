{
    "id": "897059ab-6c2a-4b63-a648-db09480cff45",
    "modelName": "GMExtension",
    "mvc": "1.2",
    "name": "file_raw",
    "IncludedResources": [
        
    ],
    "androidPermissions": [
        
    ],
    "androidProps": true,
    "androidactivityinject": "",
    "androidclassname": "",
    "androidinject": "",
    "androidmanifestinject": "",
    "androidsourcedir": "",
    "author": "",
    "classname": "",
    "copyToTargets": 113497714299118,
    "date": "2019-34-12 01:12:29",
    "description": "",
    "exportToGame": true,
    "extensionName": "",
    "files": [
        {
            "id": "bac80d6c-a2e2-445c-9d9d-6141adb131a5",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                {
                    "id": "3c2c3177-5d53-863e-9fb5-07b386cadd01",
                    "modelName": "GMExtensionFile",
                    "mvc": "1.0",
                    "constantName": "file_raw_seek_start",
                    "hidden": false,
                    "value": "0"
                },
                {
                    "id": "cf3457db-679a-2566-3b32-2653fc27e479",
                    "modelName": "GMExtensionFile",
                    "mvc": "1.0",
                    "constantName": "file_raw_seek_relative",
                    "hidden": false,
                    "value": "1"
                },
                {
                    "id": "d35a25f4-749c-d5a9-3267-79a9d7b32742",
                    "modelName": "GMExtensionFile",
                    "mvc": "1.0",
                    "constantName": "file_raw_seek_end",
                    "hidden": false,
                    "value": "2"
                }
            ],
            "copyToTargets": 9223372036854775807,
            "filename": "file_raw.dll",
            "final": "",
            "functions": [
                {
                    "id": "3c2c3177-e6e8-3d3e-062c-2591a1068851",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "file_raw_init_impl",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "file_raw_init_impl",
                    "returnType": 2
                },
                {
                    "id": "69796422-b3bd-686b-173d-3480bfe822f4",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "file_raw_is_available",
                    "help": "file_raw_is_available() : Returns whether the DLL loaded alright",
                    "hidden": false,
                    "kind": 1,
                    "name": "file_raw_is_available",
                    "returnType": 2
                },
                {
                    "id": "27bcdfe8-8f12-1653-6476-b9a61465c6e0",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        1
                    ],
                    "externalName": "file_raw_open",
                    "help": "file_raw_open(path, mode_str)",
                    "hidden": false,
                    "kind": 1,
                    "name": "file_raw_open",
                    "returnType": 2
                },
                {
                    "id": "5bc307d6-5ca0-c4b2-3bf0-0e6a3f3c6cf1",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "file_raw_close",
                    "help": "file_raw_close(rawfile_ind)",
                    "hidden": false,
                    "kind": 1,
                    "name": "file_raw_close",
                    "returnType": 2
                },
                {
                    "id": "3C2C3177-F7F9-2C3E-F9D3-CB7F4CCABB61",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "file_raw_exists",
                    "help": "file_raw_exists(rawfile_ind)",
                    "hidden": false,
                    "kind": 1,
                    "name": "file_raw_exists",
                    "returnType": 2
                },
                {
                    "id": "52e995a7-7bab-b6d8-0ded-8826e9e041fd",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "file_raw_flush",
                    "help": "file_raw_flush(rawfile_ind)",
                    "hidden": false,
                    "kind": 1,
                    "name": "file_raw_flush",
                    "returnType": 2
                },
                {
                    "id": "43b80b66-b767-0a5e-b175-1d91d9829501",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "file_raw_rewind",
                    "help": "file_raw_rewind(rawfile_ind)",
                    "hidden": false,
                    "kind": 1,
                    "name": "file_raw_rewind",
                    "returnType": 2
                },
                {
                    "id": "5f3ab080-361c-e701-542c-6b1e61781c6d",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        2,
                        2,
                        2
                    ],
                    "externalName": "file_raw_seek",
                    "help": "file_raw_seek(rawfile_ind, origin, pos)",
                    "hidden": false,
                    "kind": 1,
                    "name": "file_raw_seek",
                    "returnType": 2
                },
                {
                    "id": "5d4e89e8-e7f2-f825-b36d-a63ac3d1470b",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "file_raw_tell",
                    "help": "file_raw_tell(rawfile_ind)",
                    "hidden": false,
                    "kind": 1,
                    "name": "file_raw_tell",
                    "returnType": 2
                },
                {
                    "id": "69796422-3b35-e06b-bd97-16a29b244494",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "file_raw_eof",
                    "help": "file_raw_eof(rawfile_ind)",
                    "hidden": false,
                    "kind": 1,
                    "name": "file_raw_eof",
                    "returnType": 2
                },
                {
                    "id": "c3d3ce88-6e60-b5c1-604a-3480b06077ae",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "file_raw_write_u8",
                    "help": "file_raw_write_u8(rawfile_ind, val)",
                    "hidden": false,
                    "kind": 1,
                    "name": "file_raw_write_u8",
                    "returnType": 2
                },
                {
                    "id": "f1dab9f9-479a-e9a8-d001-1747798f6c79",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "file_raw_read_u8",
                    "help": "file_raw_read_u8(rawfile_ind)",
                    "hidden": false,
                    "kind": 1,
                    "name": "file_raw_read_u8",
                    "returnType": 2
                },
                {
                    "id": "2ce15283-0674-5d24-28c3-3d273b70ded7",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "file_raw_write_s8",
                    "help": "file_raw_write_s8(rawfile_ind, val)",
                    "hidden": false,
                    "kind": 1,
                    "name": "file_raw_write_s8",
                    "returnType": 2
                },
                {
                    "id": "33c23b46-1fd8-94c0-6bc7-d4ea333d85a7",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "file_raw_read_s8",
                    "help": "file_raw_read_s8(rawfile_ind)",
                    "hidden": false,
                    "kind": 1,
                    "name": "file_raw_read_s8",
                    "returnType": 2
                },
                {
                    "id": "a5b5a8ee-808e-5ba7-062c-da6e5d3522f8",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "file_raw_write_u16",
                    "help": "file_raw_write_u16(rawfile_ind, val)",
                    "hidden": false,
                    "kind": 1,
                    "name": "file_raw_write_u16",
                    "returnType": 2
                },
                {
                    "id": "1a6102ca-7f12-e9a3-6832-2fcc4fe2b11f",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "file_raw_read_u16",
                    "help": "file_raw_read_u16(rawfile_ind)",
                    "hidden": false,
                    "kind": 1,
                    "name": "file_raw_read_u16",
                    "returnType": 2
                },
                {
                    "id": "1d5e6f55-5dcd-d3c3-6360-9161a13d6a9c",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "file_raw_write_s16",
                    "help": "file_raw_write_s16(rawfile_ind, val)",
                    "hidden": false,
                    "kind": 1,
                    "name": "file_raw_write_s16",
                    "returnType": 2
                },
                {
                    "id": "6c6fc3d5-6ccc-3ae4-7068-2b327412995a",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "file_raw_read_s16",
                    "help": "file_raw_read_s16(rawfile_ind)",
                    "hidden": false,
                    "kind": 1,
                    "name": "file_raw_read_s16",
                    "returnType": 2
                },
                {
                    "id": "29370518-783a-61d7-d574-98187f6e0bee",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "file_raw_write_u32",
                    "help": "file_raw_write_u32(rawfile_ind, val)",
                    "hidden": false,
                    "kind": 1,
                    "name": "file_raw_write_u32",
                    "returnType": 2
                },
                {
                    "id": "2ae7425d-e2dc-813c-9dc0-e1a429140c16",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "file_raw_read_u32",
                    "help": "file_raw_read_u32(rawfile_ind)",
                    "hidden": false,
                    "kind": 1,
                    "name": "file_raw_read_u32",
                    "returnType": 2
                },
                {
                    "id": "acccf3fa-5303-786b-3843-7a5853c95ae8",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "file_raw_write_s32",
                    "help": "file_raw_write_s32(rawfile_ind, val)",
                    "hidden": false,
                    "kind": 1,
                    "name": "file_raw_write_s32",
                    "returnType": 2
                },
                {
                    "id": "d42c37ff-a6dc-e191-5111-f15d5a9e3dad",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "file_raw_read_s32",
                    "help": "file_raw_read_s32(rawfile_ind)",
                    "hidden": false,
                    "kind": 1,
                    "name": "file_raw_read_s32",
                    "returnType": 2
                },
                {
                    "id": "255d51be-1f0b-7e1c-0e09-7d0a05b49b70",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "file_raw_write_f32",
                    "help": "file_raw_write_f32(rawfile_ind, val)",
                    "hidden": false,
                    "kind": 1,
                    "name": "file_raw_write_f32",
                    "returnType": 2
                },
                {
                    "id": "c895cb8c-584e-6c68-9cfb-681f0d6a377e",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "file_raw_read_f32",
                    "help": "file_raw_read_f32(rawfile_ind)",
                    "hidden": false,
                    "kind": 1,
                    "name": "file_raw_read_f32",
                    "returnType": 2
                },
                {
                    "id": "20ad7e2c-ed1f-bde2-c88b-1553b4fe485b",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "file_raw_write_f64",
                    "help": "file_raw_write_f64(rawfile_ind, val)",
                    "hidden": false,
                    "kind": 1,
                    "name": "file_raw_write_f64",
                    "returnType": 2
                },
                {
                    "id": "acf85fc6-f739-f0ff-beae-04a96e839cac",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "file_raw_read_f64",
                    "help": "file_raw_read_f64(rawfile_ind)",
                    "hidden": false,
                    "kind": 1,
                    "name": "file_raw_read_f64",
                    "returnType": 2
                },
                {
                    "id": "E1F1ECAA-D5DB-0EE3-AC86-61D5E0F900DC",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        1
                    ],
                    "externalName": "file_raw_write_s64_impl",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "file_raw_write_s64_impl",
                    "returnType": 2
                },
                {
                    "id": "43F89B42-14A9-4304-1998-6653AD45C6D3",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        1
                    ],
                    "externalName": "file_raw_read_s64_impl",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "file_raw_read_s64_impl",
                    "returnType": 2
                },
                {
                    "id": "f0e0fdbb-d5db-0ef2-f9d3-2591a68e33ed",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        1
                    ],
                    "externalName": "file_raw_write_string",
                    "help": "file_raw_write_string(rawfile_ind, val)",
                    "hidden": false,
                    "kind": 1,
                    "name": "file_raw_write_string",
                    "returnType": 2
                },
                {
                    "id": "4b5b4600-c4ca-1f49-cae0-bc083eac9946",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "file_raw_read_string",
                    "help": "file_raw_read_string(rawfile_ind)",
                    "hidden": false,
                    "kind": 1,
                    "name": "file_raw_read_string",
                    "returnType": 1
                },
                {
                    "id": "40cba860-75b8-4303-6c54-e9ae6242b13d",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        1
                    ],
                    "externalName": "file_raw_write_chars",
                    "help": "file_raw_write_chars(rawfile_ind, val)",
                    "hidden": false,
                    "kind": 1,
                    "name": "file_raw_write_chars",
                    "returnType": 2
                },
                {
                    "id": "69796422-1917-c26b-cae0-43f7c7cadd04",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "file_raw_read_chars",
                    "help": "file_raw_read_chars(rawfile_ind, count)",
                    "hidden": false,
                    "kind": 1,
                    "name": "file_raw_read_chars",
                    "returnType": 1
                },
                {
                    "id": "1fa0e6e9-b80d-3c76-c044-f8cc5d394acc",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 4,
                    "args": [
                        2,
                        1,
                        2,
                        2
                    ],
                    "externalName": "file_raw_write_buffer_impl",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "file_raw_write_buffer_impl",
                    "returnType": 2
                },
                {
                    "id": "677fa250-31e3-82dc-01cc-fa4943eeec56",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 4,
                    "args": [
                        2,
                        1,
                        2,
                        2
                    ],
                    "externalName": "file_raw_read_buffer_impl",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "file_raw_read_buffer_impl",
                    "returnType": 2
                }
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "extensions\\file_raw.dll",
            "uncompress": false
        },
        {
            "id": "7cc73678-e3b5-432b-8372-a1d5779ceb4b",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": 9223372036854775807,
            "filename": "file_raw.gml",
            "final": "",
            "functions": [
                {
                    "id": "78432017-368b-8fc8-d0dc-55652dab28e0",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "file_raw_init",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "file_raw_init",
                    "returnType": 2
                },
                {
                    "id": "4bc89ae1-8a82-76b6-a478-8cefce60b432",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 4,
                    "args": [
                        2,
                        2,
                        2,
                        2
                    ],
                    "externalName": "file_raw_write_buffer",
                    "help": "file_raw_write_buffer(rawfile_ind, buffer, offset, length)",
                    "hidden": false,
                    "kind": 2,
                    "name": "file_raw_write_buffer",
                    "returnType": 2
                },
                {
                    "id": "ef50af4c-7e14-cbef-48fc-6f3de6088494",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 4,
                    "args": [
                        2,
                        2,
                        2,
                        2
                    ],
                    "externalName": "file_raw_read_buffer",
                    "help": "file_raw_read_buffer(rawfile_ind, buffer, offset, length)",
                    "hidden": false,
                    "kind": 2,
                    "name": "file_raw_read_buffer",
                    "returnType": 2
                },
                {
                    "id": "E1F1ECAA-3B35-E0E3-E8C2-CB7F4017AA7C",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "file_raw_write_s64",
                    "help": "file_raw_write_s64(rawfile_ind, val)",
                    "hidden": false,
                    "kind": 2,
                    "name": "file_raw_write_s64",
                    "returnType": 2
                },
                {
                    "id": "A0CBA89F-879A-9ED3-6401-B12E93F4D786",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "file_raw_read_s64",
                    "help": "file_raw_read_s64(rawfile_ind)",
                    "hidden": false,
                    "kind": 2,
                    "name": "file_raw_read_s64",
                    "returnType": 2
                }
            ],
            "init": "file_raw_init",
            "kind": 2,
            "order": [
                "78432017-368b-8fc8-d0dc-55652dab28e0",
                "4bc89ae1-8a82-76b6-a478-8cefce60b432",
                "ef50af4c-7e14-cbef-48fc-6f3de6088494"
            ],
            "origname": "extensions\\gml.gml",
            "uncompress": false
        }
    ],
    "gradleinject": "",
    "helpfile": "",
    "installdir": "",
    "iosProps": true,
    "iosSystemFrameworkEntries": [
        
    ],
    "iosThirdPartyFrameworkEntries": [
        
    ],
    "iosdelegatename": "",
    "iosplistinject": "",
    "license": "Proprietary",
    "maccompilerflags": "",
    "maclinkerflags": "",
    "macsourcedir": "",
    "options": null,
    "optionsFile": "options.json",
    "packageID": "",
    "productID": "",
    "sourcedir": "",
    "supportedTargets": 113497714299118,
    "tvosProps": false,
    "tvosSystemFrameworkEntries": [
        
    ],
    "tvosThirdPartyFrameworkEntries": [
        
    ],
    "tvosclassname": "",
    "tvosdelegatename": "",
    "tvosmaccompilerflags": "",
    "tvosmaclinkerflags": "",
    "tvosplistinject": "",
    "version": "1.0.0"
}