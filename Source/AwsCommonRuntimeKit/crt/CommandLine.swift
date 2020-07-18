//  Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
//  SPDX-License-Identifier: Apache-2.0.

import Foundation
import AwsCCommon

public struct CommandLineParser {
	static func parseArguments(argc: Int32, arguments: UnsafeMutablePointer<UnsafeMutablePointer<Int8>?> , optionString: String, options: [aws_cli_option]) -> [String: Any] {
        var argumentsDict = [String: Any] ()
        
        while(true) {
                   
           var optionIndex: Int32 = 0
           
           let opt = aws_cli_getopt_long(argc, arguments, optionString.asCStr(), options, &optionIndex)

           if opt == -1 || opt == 0 {
               break
           }
           
            if let char = opt.toString() {
                if aws_cli_optarg != nil {
                    argumentsDict[char] = String(cString: aws_cli_optarg)
                } else {
                    //if argument doesnt have a value just mark it as present in the dictionary
                    argumentsDict[char] = true
                }
           }
        }
                   
        
        return argumentsDict
	}
}

public struct ElasticurlOptions {
    static let caCert = aws_cli_option(name: "cacert".asCStr(), has_arg: AWS_CLI_OPTIONS_REQUIRED_ARGUMENT, flag: nil, val: "a".toInt32())
    static let caPath = aws_cli_option(name: "capath".asCStr(), has_arg: AWS_CLI_OPTIONS_REQUIRED_ARGUMENT, flag: nil, val: "b".toInt32())
    static let cert = aws_cli_option(name: "cert".asCStr(), has_arg: AWS_CLI_OPTIONS_REQUIRED_ARGUMENT, flag: nil, val: "c".toInt32())
    static let key = aws_cli_option(name: "key".asCStr(), has_arg: AWS_CLI_OPTIONS_REQUIRED_ARGUMENT, flag: nil, val: "e".toInt32())
    static let connectTimeout = aws_cli_option(name: "connect-timeout".asCStr(), has_arg: AWS_CLI_OPTIONS_REQUIRED_ARGUMENT, flag: nil, val: "f".toInt32())
    static let header = aws_cli_option(name: "header".asCStr(), has_arg: AWS_CLI_OPTIONS_REQUIRED_ARGUMENT, flag: nil, val: "H".toInt32())
    static let data = aws_cli_option(name: "data".asCStr(), has_arg: AWS_CLI_OPTIONS_REQUIRED_ARGUMENT, flag: nil, val: "d".toInt32())
    static let dataFile = aws_cli_option(name: "data-file".asCStr(), has_arg: AWS_CLI_OPTIONS_REQUIRED_ARGUMENT, flag: nil, val: "g".toInt32())
    static let method = aws_cli_option(name: "method".asCStr(), has_arg: AWS_CLI_OPTIONS_REQUIRED_ARGUMENT, flag: nil, val: "M".toInt32())
    static let get = aws_cli_option(name: "get".asCStr(), has_arg: AWS_CLI_OPTIONS_NO_ARGUMENT, flag: nil, val: "G".toInt32())
    static let post = aws_cli_option(name: "post".asCStr(), has_arg: AWS_CLI_OPTIONS_NO_ARGUMENT, flag: nil, val: "P".toInt32())
    static let head = aws_cli_option(name: "head".asCStr(), has_arg: AWS_CLI_OPTIONS_NO_ARGUMENT, flag: nil, val: "I".toInt32())
    static let signingLib = aws_cli_option(name: "signing-lib".asCStr(), has_arg: AWS_CLI_OPTIONS_REQUIRED_ARGUMENT, flag: nil, val: "j".toInt32())
    static let include = aws_cli_option(name: "include".asCStr(), has_arg: AWS_CLI_OPTIONS_NO_ARGUMENT, flag: nil, val: "i".toInt32())
    static let insecure = aws_cli_option(name: "insecure".asCStr(), has_arg: AWS_CLI_OPTIONS_NO_ARGUMENT, flag: nil, val: "k".toInt32())
    static let signingFunc = aws_cli_option(name: "signing-func".asCStr(), has_arg: AWS_CLI_OPTIONS_REQUIRED_ARGUMENT, flag: nil, val: "l".toInt32())
    static let signingContext = aws_cli_option(name: "signing-context".asCStr(), has_arg: AWS_CLI_OPTIONS_REQUIRED_ARGUMENT, flag: nil, val: "m".toInt32())
    static let output = aws_cli_option(name: "output".asCStr(), has_arg: AWS_CLI_OPTIONS_REQUIRED_ARGUMENT, flag: nil, val: "o".toInt32())
    static let trace = aws_cli_option(name: "trace".asCStr(), has_arg: AWS_CLI_OPTIONS_REQUIRED_ARGUMENT, flag: nil, val: "t".toInt32())
    static let verbose = aws_cli_option(name: "verbose".asCStr(), has_arg: AWS_CLI_OPTIONS_REQUIRED_ARGUMENT, flag: nil, val: "v".toInt32())
    static let version = aws_cli_option(name: "version".asCStr(), has_arg: AWS_CLI_OPTIONS_NO_ARGUMENT, flag: nil, val: "V".toInt32())
    static let http2 = aws_cli_option(name: "http2".asCStr(), has_arg: AWS_CLI_OPTIONS_NO_ARGUMENT, flag: nil, val: "w".toInt32())
    static let http1_1 = aws_cli_option(name: "http1_1".asCStr(), has_arg: AWS_CLI_OPTIONS_NO_ARGUMENT, flag: nil, val: "W".toInt32())
    static let help = aws_cli_option(name: "help".asCStr(), has_arg: AWS_CLI_OPTIONS_NO_ARGUMENT, flag: nil, val: "h".toInt32())
    static let lastOption = aws_cli_option(name: nil, has_arg: AWS_CLI_OPTIONS_NO_ARGUMENT, flag: nil, val: 0)
}
