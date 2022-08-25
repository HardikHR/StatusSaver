package com.whatsapp.status.saver.storysaver.util;

import com.whatsapp.status.saver.storysaver.R;

public class Constant {
    public static String[] static_tag = new String[]{"Good Morning", "Good Afternoon", "Good Night", "How are You?", "Where are You?"};

    public static int[] modual_color = new int[]{R.color.m0, R.color.m1, R.color.m2, R.color.m3, R.color.m4, R.color.m5, R.color.m6, R.color.m7, R.color.m8, R.color.m9};
    
    public static String[] modual = new String[]{"Photo", "Video", "Direct Chat", "Magic Font", "Blank Message", "Text Repeater", "Text Style", "Caption Status", "Random Text", "Text to Emoji"};
    
    public static int[] modual_icon = new int[]{R.drawable.img0, R.drawable.img1, R.drawable.img2, R.drawable.img3, R.drawable.img4, R.drawable.img5, R.drawable.img6, R.drawable.img7, R.drawable.img8, R.drawable.img9};

    public static String[] emostring = [{]"😀", "😁", "😂", "🤣", "😃", "😄", "😅", "😆", "😇", "😈", "😉", "😎", "😋", "😊", "😍", "😘", "😗", "😜", "😛", "😓", "🤪", "🤫", "💝", "🧡", "💛", "💚", "💎", "💍", "👦", "💪", "👈", "👉", "👆", "🙌", "👌", "🤮", "🧐", "💋", "🙏", "🤛", "🤚"]
    public static String[] randomEmojis = ["🗣", "🥈", "🏅", "🎾", "🎳", "🏑", "🏓", "🎣", "🥋", "🎱", "📣", "🔔", "🎵", "📽", "📀", "🍇", "🍉", "🍓", "🍅", "🍌", "🥕", "🌽", "🥒", "🥡", "🥧", "🍼", "🍾", "🥢", "🥄", "🏺", "🦁", "🐑", "🐇", "🐪", "🐿", "🐾", "🐍", "🐡", "🕸", "🕷", "🦂"]

    public static String[] emojis_title = ["happy", "smile", "laughing", "crazy", "confused", "tear,", "crazylaugh", "upsidedown", "wink", "relieved", "loveeyes", "lovely", "kiss", "kisswitheart", "overing", "tongue", "squnting", "winking", "raised", "monocle", "cool", "nerd", "starstruck", "party", "smirking", "unamused", "disappointed", "pensive", "worried", "confused", "tired", "weary", "pleading", "cry", "loudcry", "angry", "pouting", "shoutangry", "explode", "flushed", "hot", "cold", "scream", "fear", "sad", "think", "shushing", "lying", "neutral", "rolleyes", "hushed", "frowning", "anguished", "sleep", "drooling", "snooze", "dizzy", "woozy", "sick", "hurt", "money", "cowboy", "angryhorn", "happyhorn", "poobad", "ghost", "danger", "alert", "cat", "handrise", "openhand", "raising", "clap", "handshake", "thumbsup", "thumbsdown", "rock", "victory", "nice", "right", "left", "up", "down", "bye", "body", "write", "leg", "policeman", "policewomen", "boy", "girl", "build", "research", "doctor", "king", "queen", "chef", "teacher", "angel", "vampire", "love", "cross", "run", "life", "family", "dress", "shoes", "taj", "ring", "glass", "apple", "orange", "banana", "coconut", "rice", "chocolate", "popcorn", "donut", "noodles", "beer", "tea", "coffee", "wine", "soup", "soda", "heart", "heartbreak", "revolve", "gift", "monkey", "fox", "cock", "dog", "snake", "sun", "star", "moon", "fire", "cloud", "rain", "snow", "snowman", "pizza", "burger", "meat"]
    
    public static String[] emojis_icon = ["😀", "☺", "😆", "🤣", "😅", "😂", "😁", "🙃", "😉", "😌", "😍", "🥰", "😙", "😘", "😋", "😛", "😜", "🤪", "🤨", "🧐", "😎", "🤓", "🤩", "🥳", "😏", "😒", "😞", "😟", "😕", "😫", "😩", "👺", "🥺", "😢", "😭", "😠", "😡", "🤬", "🤯", "😳", "🥵", "🥶", "😱", "😨", "😥", "🤔", "🤫", "🤥", "😐", "🙄", "😯", "😧", "😲", "😴", "🤤", "😪", "😵", "🤮", "🤧", "🤕", "🤑", "🤠", "👿", "😈", "💩", "👻", "💀", "☠", "😺", "🤲", "👐", "🙌", "👏", "🤝", "👍", "👎", "🤟", "✌", "👌", "👉", "👈", "👆", "👇", "👋", "💪", "✍", "🦶", "👮", "👮‍♀️", "🧒", "👩", "👷‍♀️", "🕵️‍♀️", "👨‍⚕️", "🤴", "👸", "👩‍🍳", "👨‍🎓", "👼", "🧛‍♂️", "💑", "🙅", "🏃", "👫", "👩‍👩‍👧‍👦", "🧥", "👞", "👑", "💍", "👓", "🍎", "🍊", "🍌", "🥥", "🍙", "🍫", "🍿", "🍩", "🍜", "🍺", "☕", "☕", "🍷", "🥣", "🥤", "❤", "💔", "💖", "💝", "🐵", "🦊", "🐔", "🐶", "🐍", "🌞", "⭐", "🌕", "🔥", "☁", "🌧", "❄", "⛄", "🍕", "🍔", "🥩"]

    public static String[][] b = new String[28][];

    static {
        String[][] txtstyle = b;
        txtstyle[0] = new String[]{"Ⓐ", "Ⓑ", "Ⓒ", "Ⓓ", "Ⓔ", "Ⓕ", "Ⓖ", "Ⓗ", "Ⓘ", "Ⓙ", "Ⓚ", "Ⓛ", "Ⓜ", "Ⓝ", "Ⓞ", "Ⓟ", "Ⓠ", "Ⓡ", "Ⓢ", "Ⓣ", "Ⓤ", "Ⓥ", "Ⓦ", "Ⓧ", "Ⓨ", "Ⓩ"};
        txtstyle[1] = new String[]{"ａ", "ｂ", "ｃ", "ｄ", "ｅ", "ｆ", "ｇ", "ｈ", "ｉ", "ｊ", "ｋ", "ｌ", "ｍ", "ｎ", "ｏ", "ｐ", "ｑ", "ｒ", "ｓ", "ｔ", "ｕ", "ｖ", "ｗ", "ｘ", "ｙ", "ｚ"};
        txtstyle[2] = new String[]{"ꍏ", "♭", "☾", "◗", "€", "Ϝ", "❡", "♄", "♗", "♪", "ϰ", "↳", "♔", "♫", "⊙", "ρ", "☭", "☈", "ⓢ", "☂", "☋", "✓", "ω", "⌘", "☿", "☡"};
        txtstyle[3] = new String[]{"🅰", "🅱", "🌜", "🌛", "🎗", "🎏", "🌀", "♓", "🎐", "🎷", "🎋", "👢", "〽️", "🎵", "⚽", "🅿", "️🍳", "🌱", "💲", "🌴", "⛎", "✅", "🔱", "❎", "🍸", "💤"};
        txtstyle[4] = new String[]{"A͎", "B͎", "C͎", "D͎", "E͎", "F͎", "G͎", "H͎", "I͎", "J͎", "K͎", "L͎", "M͎", "N͎", "O͎", "P͎", "Q͎", "R͎", "S͎", "T͎", "U͎", "V͎", "W͎", "X͎", "Y͎", "Z͎"};
        txtstyle[5] = new String[]{"🅐", "🅑", "🅒", "🅓", "🅔", "🅕", "🅖", "🅗", "🅘", "🅙", "🅚", "🅛", "🅜", "🅝", "🅞", "🅟", "🅠", "🅡", "🅢", "🅣", "🅤", "🅥", "🅠", "🅧", "🅨", "🅩"};
        txtstyle[6] = new String[]{"🄰", "🄱", "🄲", "🄳", "🄴", "🄵", "🄶", "🄷", "🄸", "🄹", "🄺", "🄻", "🄼", "🄽", "🄾", "🄿", "🅀", "🅁", "🅂", "🅃", "🅄", "🅅", "🅀", "🅇", "🅈", "🅉"};
        txtstyle[7] = new String[]{"🅰", "🅱", "🅲", "🅳", "🅴", "🅵", "🅶", "🅷", "🅸", "🅹", "🅺", "🅻", "🅼", "🅽", "🅾", "🅿", "🆀", "🆁", "🆂", "🆃", "🆄", "🆅", "🆀", "🆇", "🆈", "🆉"};
        txtstyle[8] = new String[]{"A", "♥B", "♥C", "♥D", "♥E", "♥F", "♥G", "♥H", "♥I", "♥J", "♥K", "♥L", "♥M", "♥N", "♥O", "♥P", "♥Q", "♥R", "♥S", "♥T", "♥U", "♥V", "♥W", "♥X", "♥Y", "♥Z"};
        txtstyle[9] = new String[]{"✌", "︎👌", "︎👍", "︎👎", "︎☜", "☞", "︎☝", "︎☟", "︎✋", "︎☺", "︎😐", "︎☹", "︎💣", "︎☠", "︎⚐︎", "🏱", "︎✈", "︎☼", "︎💧", "︎❄", "︎🕆", "︎✞", "︎🕈", "︎✠", "︎✡", "︎☪"};
        txtstyle[10] = new String[]{"『A』", "『B』", "『C』", "『D』", "『E』", "『F』", "『G』", "『H』", "『I』", "『J』", "『K』", "『L』", "『M』", "『N』", "『O』", "『P』", "『Q』", "『R』", "『S』", "『T』", "『U』", "『V』", "『W』", "『X』", "『Y』", "『Z』"};
        txtstyle[11] = new String[]{"【A】", "【B】", "【C】", "【D】", "【E】", "【F】", "【G】", "【H】", "【I】", "【J】", "【K】", "【L】", "【M】", "【N】", "【O】", "【P】", "【Q】", "【R】", "【S】", "【T】", "【U】", "【V】", "【W】", "【X】", "【Y】", "【Z】"};
        txtstyle[12] = new String[]{"A⃞ ", " B⃞ ", " C⃞ ", " D⃞ ", " E⃞ ", " F⃞ ", " G⃞ ", " H⃞ ", " I⃞ ", " J⃞ ", " K⃞ ", " L⃞ ", " M⃞ ", " N⃞ ", " O⃞ ", " P⃞ ", " Q⃞ ", " R⃞ ", " S⃞ ", " T⃞ ", " U⃞ ", " V⃞ ", " W⃞ ", " X⃞ ", " Y⃞ ", " Z⃞ "};
        txtstyle[13] = new String[]{"ₐ", "B", "C", "D", "ₑ", "F", "G", "ₕ", "ᵢ", "ⱼ", "ₖ", "ₗ", "ₘ", "ₙ", "ₒ", "ₚ", "Q", "ᵣ", "ₛ", "ₜ", "ᵤ", "ᵥ", "W", "ₓ", "Y", "Z"};
        txtstyle[14] = new String[]{"₳", "฿", "₵", "Đ", "Ɇ", "₣", "₲", "Ⱨ", "ł", "J", "₭", "Ⱡ", "₥", "₦", "Ø", "₱", "Q", "Ɽ", "₴", "₮", "Ʉ", "V", "₩", "Ӿ", "Ɏ", "Ⱬ"};
        txtstyle[15] = new String[]{"ǟ", "ɮ", "ƈ", "ɖ", "ɛ", "ʄ", "ɢ", "ɦ", "ɨ", "ʝ", "ӄ", "ʟ", "ʍ", "ռ", "օ", "ք", "զ", "ʀ", "ֆ", "ȶ", "ʊ", "ʋ", "ա", "Ӽ", "ʏ", "ʐ"};
        txtstyle[16] = new String[]{"ᗩ", "ᗷ", "ᑢ", "ᕲ", "ᘿ", "ᖴ", "ᘜ", "ᕼ", "ᓰ", "ᒚ", "ᖽᐸ", "ᒪ", "ᘻ", "ᘉ", "ᓍ", "ᕵ", "ᕴ", "ᖇ", "S", "ᖶ", "ᑘ", "ᐺ", "ᘺ", "᙭", "ᖻ", "ᗱ"};
        txtstyle[17] = new String[]{"卂", "в", "¢", "𝒹", "Ẹ", "ғ", "ᵍ", "𝕙", "เ", "Ⓙ", "𝕂", "𝓛", "𝓂", "Ň", "𝔬", "ｐ", "q", "Ř", "𝐬", "т", "𝐔", "ᐯ", "ω", "𝓧", "ץ", "Ƶ"};
        txtstyle[18] = new String[]{"a͜͡", "b͜͡", "c͜͡", "d͜͡", "e͜͡", "f͜͡", "g͜͡", "h͜͡", "i͜͡", "j͜͡", "k͜͡", "l͜͡", "m͜͡", "n͜͡", "o͜͡", "p͜͡", "q͜͡", "r͜͡", "s͜͡", "t͜͡", "u͜͡", "v͜͡", "w͜͡", "x͜͡", "y͜͡", "z͜͡"};
        txtstyle[19] = new String[]{"𝓐", "𝓑", "𝓒", "𝓓", "𝓔", "𝓕", "𝓖", "𝓗", "𝓘", "𝓙", "𝓚", "𝓛", "𝓜", "𝓝", "𝓞", "𝓟", "𝓠", "𝓡", "𝓢", "𝓣", "𝓤", "𝓥", "𝓦", "𝓧", "𝓨", "𝓩"};
        txtstyle[20] = new String[]{"a͙͛", "b͙͛", "c͙͛", "d͙͛", "e͙͛", "f͙͛", "g͙͛", "h͙͛", "i͙͛", "j͙͛", "k͙͛", "l͙͛", "m͙͛", "n͙͛", "o͙͛", "p͙͛", "q͙͛", "r͙͛", "s͙͛", "t͙͛", "u͙͛", "v͙͛", "w͙͛", "x͙͛", "y͙͛", "z͙͛"};
        txtstyle[21] = new String[]{"Ⱥ", "β", "↻", "Ꭰ", "Ɛ", "Ƒ", "Ɠ", "Ƕ", "į", "ل", "Ҡ", "Ꝉ", "Ɱ", "ហ", "ට", "φ", "Ҩ", "འ", "Ϛ", "Ͳ", "Ա", "Ỽ", "చ", "ჯ", "Ӌ", "ɀ"};
        txtstyle[22] = new String[]{"Δ", "ᵇ", "Ⓒ", "Ď", "Ⓔ", "ғ", "𝓰", "Ⓗ", "𝕀", "𝕛", "ｋ", "𝓁", "𝕞", "ή", "𝐎", "ק", "𝓆", "𝓻", "Ŝ", "𝕋", "Ⓤ", "𝔳", "𝔴", "Ж", "ⓨ", "ž"};
        txtstyle[23] = new String[]{"░A", "░B", "░C", "░D", "░E", "░F", "░G", "░H", "░I", "░J", "░K", "░L", "░M", "░N", "░O", "░P", "░Q", "░R", "░S", "░T", "░U", "░V", "░W", "░X", "░Y", "░Z"};
        txtstyle[24] = new String[]{"Λ", "Ｂ", "Ｃ", "Ｄ", "Σ", "Ｆ", "Ｇ", "Ｈ", "Ｉ", "Ｊ", "Ｋ", "Ｌ", "Ｍ", "Ｎ", "♢", "Ｐ", "Ｑ", "Ｒ", "Ｓ", "Ｔ", "Ｕ", "Ｖ", "Ｗ", "Ｘ", "Ｙ", "Ｚ"};
        txtstyle[25] = new String[]{"闩", "乃", "⼕", "ᗪ", "㠪", "千", "Ꮆ", "廾", "工", "丿", "长", "㇄", "爪", "𝓝", "龱", "尸", "Ɋ", "尺", "丂", "ㄒ", "ㄩ", "ᐯ", "山", "乂", "ㄚ", "乙"};
        txtstyle[26] = new String[]{"ⓐ̣̣̣", "ⓑ̣̣̣", "ⓒ̣̣̣", "ⓓ̣̣̣", "ⓔ̣̣̣", "ⓕ̣̣̣", "ⓖ̣̣̣", "ⓗ̣̣̣", "ⓘ̣̣̣", "ⓙ̣̣̣", "ⓚ̣̣̣", "ⓛ̣̣̣", "ⓜ̣̣̣", "ⓝ̣̣̣", "ⓞ̣̣̣", "ⓟ̣̣̣", "ⓠ̣̣̣", "ⓡ̣̣̣", "ⓢ̣̣̣", "ⓣ̣̣̣", "ⓤ̣̣̣", "ⓥ̣̣̣", "ⓦ̣̣̣", "ⓧ̣̣̣", "ⓨ̣̣̣", "ⓩ̣̣̣ "};
        txtstyle[27] = new String[]{"𝔸", "𝔹", "ℂ", "𝔻", "𝔼", "𝔽", "𝔾", "ℍ", "𝕀", "𝕁", "𝕂", "𝕃", "𝕄", "ℕ", "𝕆", "ℙ", "ℚ", "ℝ", "𝕊", "𝕋", "𝕌", "𝕍", "𝕎", "𝕏", "𝕐", "ℤ"};

    }
}
