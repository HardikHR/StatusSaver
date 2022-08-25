//
//  DrawChar.swift
//  Status Saver
//
//  Created by macOS on 11/03/22.
//

import Foundation

func charDraw(name:String) -> String {
switch name {
    case "0":
        return "         **\n      *          *\n    *              *\n   *                *\n    *              *\n      *          *\n         **\n\n"
    case "1":
        return "         *\n      **\n   *   *\n*      *\n         *\n         *\n*****\n\n"
    case "2":
        return "   ***\n*            *\n            *\n         *\n      *\n   *\n*****\n\n"
    case "3":
        return "   ***\n*            *\n            *\n         *\n            *\n*            *\n   ***\n\n"
    case "4":
        return "            *\n         **\n      *   *\n   *      *\n*****\n              *\n              *\n\n"
    case "5":
        return "  ****\n*\n*\n  ***\n                 *\n                 *\n****\n\n"
    case "6":
        return "  ***\n*\n*\n****\n*            *\n*            *\n   ***\n\n"
    case "7":
        return "****\n               *\n            *\n         *\n      *\n   *\n*\n\n"
    case "8":
        return "   ***\n*            *\n   *      *\n      **\n   *      *\n*            *\n   ***\n\n"
    case "9":
        return "   ***\n*              *\n*              *\n   ****\n                 *\n                *\n   ***\n\n"
    default:
        let str = "    ****   \n *              *\n*               *\n*               *\n*               *\n *             *\n    ****   \n\n"
        let str2 = "*             *\n**            *\n*   *         *\n*      *      *\n*         *   *\n*            **\n*             *\n\n"
        let str3 = "                     \n   **         **\n   *   *    *  *\n   *      *    *\n   *           *\n   *           *\n   *           *\n\n"
        let str4 = "*\n*\n*\n*\n*\n*\n*****\n\n"
        let str5 = "*         *\n*      *\n*   *\n**\n*   *\n*      *\n*         *\n\n"
        let str6 = "    **********\n         *\n         *\n         *\n         *\n*      *\n   **\n\n"
        let str7 = "***********\n     *\n     *\n     *\n     *\n     *\n***********\n\n"
        let str8 = "*      *\n*      *\n*      *\n********\n*      *\n*      *\n*      *\n\n"
        let str9 = "   ****\n*              *\n*\n*   ***\n*              *\n*              *\n   ****\n\n"
        let str10 = "*****\n*\n*\n****\n*\n*\n*\n\n"
        let str11 = "*****\n*\n*\n***\n*\n*\n*****\n\n"
        let str12 = "******\n*      *\n*       *\n*       *\n*       *\n*      *\n******\n\n\n"
        let str13 = "     *****\n   *             \n *\n*\n*\n *\n   *             \n     *****\n\n\n"
        let str14 = "****\n*            *\n*           *\n****\n*           *\n*            *\n****\n\n\n"
        let str15 = " *****\n*     *\n*     *\n*******\n*     *\n*     *\n*     *\n\n\n"
        let str16 = "****\n               *\n            *\n         *\n      *\n   *\n****\n\n"
        let str17 = "*               *\n   *         *\n      *   *\n         *\n         *\n         *\n         *\n\n"
        let str18 = "*               *\n   *         *\n      *   *\n         *\n      *   *\n   *         *\n*               *\n\n"
        let str19 = "*           *\n*           *\n*           *\n*           *\n*   *    *\n*   *    *\n    *     *\n\n"
        let str20 = "   *            *\n   *            *\n   *            *\n   *            *\n      *      *\n         **\n\n"
        let str21 = "*            *\n*              *\n*              *\n*              *\n*              *\n*              *\n*              *\n   ****\n\n"
        let str22 = "******\n           *\n           *\n           *\n           *\n           *\n           *\n\n"
        let str23 = "   ****\n*\n*\n   ***\n               *\n               *\n****\n\n"
        let str24 = "****\n*    *\n*    *\n****\n*   *\n*     *\n*       *\n\n"
        let str25 = "   ****   \n*              *\n*               *\n*               *\n*   *       *\n*      *   *\n   **   *\n\n"
        let str26 = "****\n*           *\n*           *\n****\n*\n*\n*\n\n"
      
        switch name {
        case "A":
            return str15
        case "B":
            return str14
        case "C":
            return str13
        case "D":
            return str12
        case "E":
            return str11
        case "F":
            return str10
        case "G":
            return str9
        case "H":
            return str8
        case "I":
            return str7
        case "J":
            return str6
        case "K":
            return str5
        case "L":
            return str4
        case "M":
            return str3
        case "N":
            return str2
        case "O":
            return str
        case "P":
            return str26
        case "Q":
            return str25
        case "R":
            return str24
        case "S":
            return str23
        case "T":
            return str22
        case "U":
            return str21
        case "V":
            return str20
        case "W":
            return str19
        case "X":
            return str18
        case "Y":
            return str17
        case "Z":
            return str16
            
        default:
            switch name {
            case "a":
                return str15
            case "b":
                return str14
            case "c":
                return str13
            case "d":
                return str12
            case "e":
                return str11
            case "f":
                return str10
            case "g":
                return str9
            case "h":
                return str8
            case "i":
                return str7
            case "j":
                return str6
            case "k":
                return str5
            case "l":
                return str4
            case "m":
                return str3
            case "n":
                return str2
            case "o":
                return str
            case "p":
                return str26
            case "q":
                return str25
            case "r":
                return str24
            case "s":
                return str23
            case "t":
                return str22
            case "u":
                return str21
            case "v":
                return str20
            case "w":
                return str19
            case "x":
                return str18
            case "y":
                return str17
            case "z":
                return str16
            default:
                return ""
            }
        }
    }
}
