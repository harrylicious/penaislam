import 'package:penaislam_app/features/story/story_model.dart';

class StoryService {
  // In-memory storage for stories
  final List<Story> _stories = [
    Story(
      id: '1',
      title: 'Kisah Sahabat Nabi: Abu Bakar As-Siddiq',
      content: '''
Abu Bakar As-Siddiq adalah salah satu sahabat terdekat Nabi Muhammad SAW dan merupakan khalifah pertama setelah wafatnya Rasulullah. Beliau dikenal dengan julukan "As-Siddiq" yang berarti "yang sangat membenarkan" karena beliau adalah orang pertama yang membenarkan peristiwa Isra' Mi'raj.

Ketika banyak orang meragukan cerita Nabi Muhammad tentang perjalanan malam dari Masjidil Haram ke Masjidil Aqsa dan naik ke langit dalam satu malam, Abu Bakar langsung membenarkannya tanpa keraguan sedikitpun. Ketika ditanya mengapa ia begitu yakin, Abu Bakar menjawab, "Jika Muhammad mengatakan demikian, maka itu benar adanya. Saya mempercayai hal yang lebih jauh dari itu, yaitu wahyu yang turun dari langit."

Abu Bakar juga dikenal sangat dermawan. Ia menginfakkan hampir seluruh hartanya untuk kepentingan Islam dan membebaskan banyak budak Muslim yang disiksa oleh majikannya, termasuk Bilal bin Rabah yang kemudian menjadi muadzin pertama dalam Islam.

Saat Nabi Muhammad SAW wafat, banyak sahabat yang terguncang dan tidak percaya. Umar bin Khattab bahkan mengancam akan memenggal kepala siapa saja yang mengatakan bahwa Rasulullah telah wafat. Dalam situasi kritis ini, Abu Bakar dengan tenang berpidato:

"Wahai manusia, barangsiapa menyembah Muhammad, maka Muhammad telah wafat. Dan barangsiapa menyembah Allah, maka Allah Maha Hidup dan tidak akan pernah mati."

Kemudian beliau membacakan ayat Al-Qur'an (QS. Ali Imran: 144):
"Muhammad itu tidak lain hanyalah seorang rasul, sungguh telah berlalu sebelumnya beberapa orang rasul. Apakah jika dia wafat atau dibunuh kamu berbalik ke belakang (murtad)? Barangsiapa yang berbalik ke belakang, maka ia tidak dapat mendatangkan mudharat kepada Allah sedikitpun, dan Allah akan memberi balasan kepada orang-orang yang bersyukur."

Pidato ini menenangkan kaum muslimin dan memberi mereka kekuatan untuk melanjutkan perjuangan Islam meskipun Rasulullah telah tiada.

Sebagai khalifah, Abu Bakar berhasil mengatasi krisis yang terjadi setelah wafatnya Nabi, termasuk perang melawan kaum murtad (Riddah) dan pengumpulan Al-Qur'an. Kepemimpinannya yang singkat (632-634 M) namun sangat berpengaruh dalam menjaga keutuhan umat Islam di masa-masa kritis pasca wafatnya Rasulullah.

Kisah Abu Bakar mengajarkan kita tentang keimanan yang kokoh, kesetiaan, kedermawanan, dan kebijaksanaan dalam menghadapi krisis. Sifat-sifat inilah yang membuatnya menjadi salah satu figur paling dihormati dalam sejarah Islam.
      ''',
      category: 'Sahabat Nabi',
      imageUrl:
          'https://images.unsplash.com/photo-1584551246679-0daf3d275d0f?q=80&w=1000',
      summary:
          'Kisah tentang Abu Bakar As-Siddiq, sahabat terdekat Nabi Muhammad dan khalifah pertama yang dikenal karena keimanan dan kedermawanannya yang luar biasa.',
      isFavorite: false,
    ),
    Story(
      id: '2',
      title: 'Nabi Sulaiman dan Semut',
      content: '''
Pada zaman dahulu, Allah SWT memberikan kepada Nabi Sulaiman AS kemampuan istimewa untuk berkomunikasi dengan hewan. Suatu hari, Nabi Sulaiman bersama pasukannya yang terdiri dari manusia, jin, dan berbagai hewan, sedang melakukan perjalanan.

Ketika mereka mendekati sebuah lembah yang dihuni oleh koloni semut, seekor semut pemimpin melihat pasukan besar yang mendekat. Dengan cepat, ia memperingatkan koloninya:

"Wahai semut-semut! Masuklah ke dalam sarang-sarangmu, agar kamu tidak terinjak oleh Sulaiman dan pasukannya, sedangkan mereka tidak menyadari."

Nabi Sulaiman yang mendengar peringatan semut tersebut tersenyum dan merasa takjub. Beliau kemudian menghentikan pasukannya dan berkata kepada semut pemimpin:

"Jangan khawatir, kami tidak akan menginjak kalian."

Nabi Sulaiman sangat tersentuh dengan kepedulian semut pemimpin terhadap koloninya. Beliau pun bersyukur kepada Allah SWT atas nikmat yang telah diberikan kepadanya, yaitu kemampuan untuk memahami bahasa hewan dan kemampuan untuk memimpin dengan bijaksana.

Kisah ini diabadikan dalam Al-Quran, Surah An-Naml (27) ayat 18-19:

"Hingga ketika mereka sampai di lembah semut, seekor semut berkata, 'Wahai semut-semut! Masuklah ke dalam sarang-sarangmu, agar kamu tidak terinjak oleh Sulaiman dan pasukannya, sedangkan mereka tidak menyadari.' Maka dia (Sulaiman) tersenyum lalu tertawa karena (mendengar) perkataan semut itu. Dan dia berdoa, 'Ya Tuhanku, berilah aku ilham untuk tetap mensyukuri nikmat-Mu yang telah Engkau anugerahkan kepadaku dan kepada kedua orang tuaku, dan agar aku mengerjakan kebajikan yang Engkau ridai, dan masukkanlah aku dengan rahmat-Mu ke dalam golongan hamba-hamba-Mu yang saleh.'"

Dari kisah ini, kita dapat mengambil beberapa hikmah:

1. Pentingnya rasa syukur atas nikmat yang Allah berikan kepada kita, seperti yang dilakukan Nabi Sulaiman.

2. Meskipun memiliki kekuasaan besar, Nabi Sulaiman tetap rendah hati dan memperhatikan makhluk kecil seperti semut.

3. Kepemimpinan yang baik ditunjukkan oleh semut pemimpin yang dengan cepat memperingatkan koloninya tentang bahaya yang mendekat.

4. Allah menciptakan sistem komunikasi yang sempurna bahkan di antara makhluk sekecil semut, yang menunjukkan kebesaran dan keagungan-Nya.

Kisah ini mengajarkan kita untuk selalu bersyukur, rendah hati, dan memperhatikan semua makhluk Allah, sekecil apapun mereka.
      ''',
      category: 'Kisah Nabi',
      imageUrl:
          'https://images.unsplash.com/photo-1579409785962-4461e7ae9f43?q=80&w=1000',
      summary:
          'Kisah Nabi Sulaiman yang dapat berkomunikasi dengan semut, mengajarkan tentang rasa syukur dan pentingnya memerhatikan semua makhluk Allah.',
      isFavorite: false,
    ),
    Story(
      id: '3',
      title: 'Kisah Bilal bin Rabah',
      content: '''
Bilal bin Rabah adalah seorang budak berkulit hitam dari Ethiopia yang kemudian menjadi salah satu sahabat Nabi Muhammad SAW dan muadzin pertama dalam Islam. Sejarah hidupnya penuh dengan perjuangan dan pengorbanan yang menginspirasi.

Sebelum masuk Islam, Bilal adalah budak milik seorang kafir Quraisy bernama Umayyah bin Khalaf yang terkenal kejam. Ketika Bilal mendengar tentang ajaran Islam yang dibawa oleh Nabi Muhammad SAW, hatinya langsung tersentuh dan ia memutuskan untuk beriman secara diam-diam.

Namun, keimanannya akhirnya diketahui oleh tuannya. Umayyah sangat marah dan bertekad untuk memaksa Bilal kembali ke keyakinan nenek moyangnya. Ia menyiksa Bilal dengan cara yang sangat kejam. Bilal ditelentangkan di atas pasir gurun yang panas, dadanya ditindih dengan batu besar, dan diseret di jalan berbatu. Meskipun demikian, Bilal tetap teguh dengan keimanannya dan hanya mengucapkan satu kata: "Ahad... Ahad..." (Yang Maha Esa... Yang Maha Esa...), menegaskan keesaan Allah SWT.

Ketika Abu Bakar As-Siddiq mendengar tentang penderitaan Bilal, beliau merasa sangat tersentuh dan memutuskan untuk membelinya dari Umayyah dengan harga yang sangat tinggi. Setelah dibebaskan, Bilal bergabung dengan komunitas Muslim dan menjadi salah satu sahabat terdekat Nabi Muhammad SAW.

Suatu hari, setelah Islam mulai berkembang, Nabi Muhammad SAW menerima wahyu tentang pentingnya adzan (panggilan untuk shalat). Beliau meminta pendapat para sahabat tentang bagaimana cara memanggil umat Islam untuk shalat. Setelah beberapa usulan, akhirnya bentuk adzan yang sekarang kita kenal dipilih setelah Abdullah bin Zaid bermimpi tentangnya.

Nabi Muhammad SAW kemudian memilih Bilal untuk menjadi muadzin pertama karena suaranya yang merdu dan kuat. Maka, Bilal naik ke atap Masjid Nabawi dan mengumandangkan adzan untuk pertama kalinya. Suaranya yang indah mengalun di langit Madinah, memanggil kaum Muslimin untuk shalat.

Setelah Nabi Muhammad SAW wafat, Bilal merasa sangat bersedih sehingga ia tidak sanggup lagi mengumandangkan adzan di Madinah karena selalu teringat kepada Rasulullah. Ia kemudian pindah ke Damaskus dan hanya sekali mengumandangkan adzan kembali, yaitu ketika Umar bin Khattab mengunjungi kota tersebut dan memintanya secara khusus. Saat itu, semua orang yang pernah mengenal Rasulullah menangis karena teringat masa-masa bersama beliau.

Bilal bin Rabah wafat di Damaskus pada tahun 20 H/641 M pada usia sekitar 60 tahun. Kisahnya mengajarkan kita tentang kekuatan iman, ketabahan dalam menghadapi ujian, dan bagaimana Islam menghapuskan perbedaan ras dan status sosial. Melalui perjuangannya, Bilal membuktikan bahwa di mata Allah SWT, kemuliaan seseorang tidak ditentukan oleh warna kulit atau asal-usulnya, melainkan oleh keimanan dan ketakwaannya.
      ''',
      category: 'Sahabat Nabi',
      imageUrl:
          'https://images.unsplash.com/photo-1597224845423-caf80e4919f4?q=80&w=1000',
      summary:
          'Kisah perjuangan Bilal bin Rabah, seorang budak yang menjadi muadzin pertama dalam Islam, menunjukkan bahwa kemuliaan seseorang ditentukan oleh keimanan, bukan status sosial.',
      isFavorite: false,
    ),
    Story(
      id: '4',
      title: 'Kisah Nabi Ibrahim dan Burung',
      content: '''
Nabi Ibrahim AS adalah salah satu nabi yang memiliki gelar Khalilullah (kekasih Allah). Ia dikenal karena keimanannya yang kuat dan kesediaannya untuk selalu taat kepada Allah SWT dalam segala hal. Salah satu kisah terkenal tentang Nabi Ibrahim adalah ketika beliau meminta Allah untuk menunjukkan bagaimana Allah menghidupkan yang mati.

Kisah ini diabadikan dalam Al-Quran, Surah Al-Baqarah ayat 260:

"Dan (ingatlah) ketika Ibrahim berkata: 'Ya Tuhanku, perlihatkanlah kepadaku bagaimana Engkau menghidupkan orang mati.' Allah berfirman: 'Belum yakinkah kamu?' Ibrahim menjawab: 'Aku telah meyakininya, akan tetapi agar hatiku tetap mantap.' Allah berfirman: 'Kalau begitu ambillah empat ekor burung, lalu cincanglah semuanya olehmu. (Allah berfirman): 'Lalu letakkan di atas tiap-tiap satu bukit satu bagian dari bagian-bagian itu, kemudian panggillah mereka, niscaya mereka datang kepadamu dengan segera.' Dan ketahuilah bahwa Allah Maha Perkasa lagi Maha Bijaksana."

Nabi Ibrahim AS kemudian melaksanakan perintah Allah. Beliau mengambil empat ekor burung, menyembelihnya, mencincangnya, mencampurkan bagian-bagiannya, dan meletakkan campuran tersebut di atas beberapa bukit yang berbeda. Kemudian, atas perintah Allah, Nabi Ibrahim AS memanggil burung-burung tersebut. Dengan kuasa Allah SWT, bagian-bagian tubuh burung yang telah tercampur itu kembali terpisah, berkumpul sesuai dengan burung asalnya, dan burung-burung itu hidup kembali lalu terbang menuju Nabi Ibrahim AS.

Peristiwa ini memberikan kepada Nabi Ibrahim AS pemahaman langsung tentang kekuasaan Allah untuk menghidupkan yang mati. Ini juga menjadi pelajaran bagi umat manusia bahwa kebangkitan setelah kematian adalah sesuatu yang mudah bagi Allah SWT.

Penting untuk dicatat bahwa pertanyaan Nabi Ibrahim AS bukanlah karena beliau meragukan kekuasaan Allah, melainkan untuk memperkuat keyakinannya dan mendapatkan pengalaman langsung yang akan memberikan ketenteraman pada hatinya. Seperti yang beliau katakan, "Aku telah meyakininya, akan tetapi agar hatiku tetap mantap."

Dari kisah ini, kita dapat mengambil beberapa hikmah:

1. Tidak ada salahnya meminta pemahaman yang lebih dalam tentang kekuasaan Allah, bahkan untuk orang yang sudah beriman kuat seperti Nabi Ibrahim AS.

2. Allah SWT Maha Kuasa untuk menghidupkan yang mati, dan kebangkitan pada hari kiamat adalah sesuatu yang pasti terjadi.

3. Keyakinan dapat diperkuat melalui pengalaman langsung dan pemahaman yang lebih dalam tentang kekuasaan Allah.

4. Hubungan Nabi Ibrahim AS dengan Allah begitu dekat sehingga beliau dapat meminta demonstrasi langsung tentang kekuasaan Allah, dan Allah mengabulkan permintaannya.

Kisah ini adalah salah satu contoh dari banyak peristiwa yang menunjukkan keistimewaan Nabi Ibrahim AS dan hubungan dekatnya dengan Allah SWT, yang membuatnya layak mendapat gelar Khalilullah.
      ''',
      category: 'Kisah Nabi',
      imageUrl:
          'https://images.unsplash.com/photo-1542730466-801a321ebf05?q=80&w=1000',
      summary:
          'Kisah ketika Nabi Ibrahim meminta Allah menunjukkan bagaimana menghidupkan yang mati dengan eksperimen burung, mengajarkan tentang kebangkitan dan kekuasaan Allah.',
      isFavorite: false,
    ),
    Story(
      id: '5',
      title: 'Kisah Ashabul Kahfi',
      content: '''
Kisah Ashabul Kahfi (Penghuni Gua) adalah salah satu kisah yang diabadikan dalam Al-Quran di Surah Al-Kahfi. Ini adalah kisah tentang sekelompok pemuda beriman yang hidup di bawah kekuasaan raja yang zalim dan musyrik.

Pada masa itu, raja tersebut memaksa rakyatnya untuk menyembah berhala dan mengancam akan menghukum siapa saja yang menolak. Namun, sekelompok pemuda ini beriman kepada Allah SWT dan menolak untuk menyembah berhala. Mereka kemudian memutuskan untuk meninggalkan kota mereka dan berlindung di sebuah gua untuk menyelamatkan iman mereka.

Al-Quran menceritakan:

"Ingatlah ketika pemuda-pemuda itu berlindung ke dalam gua lalu mereka berdoa: 'Ya Tuhan kami, berikanlah rahmat kepada kami dari sisi-Mu dan sempurnakanlah petunjuk yang lurus bagi kami dalam urusan kami.'" (Al-Kahfi: 10)

Allah SWT kemudian membuat mereka tertidur dalam gua tersebut. Al-Quran menyebutkan:

"Maka Kami tutup pendengaran mereka di dalam gua itu selama beberapa tahun." (Al-Kahfi: 11)

Para pemuda ini tertidur selama 309 tahun (300 tahun menurut penanggalan matahari dan 309 tahun menurut penanggalan bulan). Selama mereka tidur, Allah menjaga mereka dengan cara membolak-balikkan tubuh mereka ke kanan dan ke kiri agar tidak rusak, dan matahari tidak masuk langsung ke gua tersebut.

Al-Quran menjelaskan:

"Dan kamu akan melihat matahari ketika terbit, condong dari gua mereka ke sebelah kanan, dan bila matahari itu terbenam, menjauhi mereka ke sebelah kiri sedang mereka berada dalam tempat yang luas dalam gua itu. Itu adalah sebagian dari tanda-tanda (kebesaran) Allah." (Al-Kahfi: 17)

Ketika akhirnya mereka terbangun, mereka mengira bahwa mereka hanya tidur sebentar. Salah satu dari mereka kemudian pergi ke kota untuk membeli makanan. Namun, ketika ia mencoba menggunakan uang kuno mereka, orang-orang kota mengenalinya sebagai salah satu pemuda yang menghilang ratusan tahun lalu. Kemudian terungkaplah kisah mereka.

Pada masa itu, kota tersebut telah berubah. Raja yang zalim telah tiada, dan masyarakat telah menjadi beriman kepada Allah. Kisah para pemuda ini kemudian menjadi bukti nyata tentang kekuasaan Allah untuk membangkitkan manusia setelah kematian, memperkuat keyakinan masyarakat tentang hari kebangkitan.

Dari kisah Ashabul Kahfi, kita dapat mengambil beberapa hikmah:

1. Keberanian untuk mempertahankan keimanan meskipun menghadapi tekanan dan ancaman.

2. Allah akan selalu melindungi orang-orang yang beriman dan bertakwa kepada-Nya.

3. Kejadian luar biasa ini menjadi bukti kekuasaan Allah untuk menghidupkan kembali manusia setelah kematian, menguatkan keyakinan tentang hari kebangkitan.

4. Perlunya mengisolasi diri dari lingkungan yang dapat merusak iman ketika diperlukan.

Kisah Ashabul Kahfi ini terus menginspirasi umat Islam untuk tetap teguh dalam keimanan mereka, apapun tantangan yang dihadapi.
      ''',
      category: 'Kisah Teladan',
      imageUrl:
          'https://images.unsplash.com/photo-1504858700536-882c978a3464?q=80&w=1000',
      summary:
          'Kisah sekelompok pemuda beriman yang tidur dalam gua selama 309 tahun untuk menyelamatkan iman mereka dari penguasa zalim, menunjukkan perlindungan Allah bagi orang beriman.',
      isFavorite: false,
    ),
    Story(
      id: '6',
      title: 'Kisah Luqman Al-Hakim',
      content: '''
Luqman Al-Hakim adalah seorang tokoh bijaksana yang diabadikan namanya dalam Al-Qur'an. Allah SWT bahkan menamai satu surah dalam Al-Qur'an dengan namanya, yaitu Surah Luqman. Meskipun ada perbedaan pendapat di kalangan ulama apakah Luqman seorang nabi atau hanya seorang hamba yang saleh, semua sepakat bahwa beliau adalah seseorang yang dianugerahi hikmah (kebijaksanaan) oleh Allah SWT.

Allah berfirman dalam Al-Qur'an:

"Dan sesungguhnya telah Kami berikan hikmah kepada Luqman, yaitu: 'Bersyukurlah kepada Allah. Dan barangsiapa yang bersyukur (kepada Allah), maka sesungguhnya ia bersyukur untuk dirinya sendiri; dan barangsiapa yang tidak bersyukur, maka sesungguhnya Allah Maha Kaya lagi Maha Terpuji'." (Luqman: 12)

Salah satu aspek paling terkenal dari kisah Luqman adalah nasihat-nasihatnya kepada anaknya, yang diabadikan dalam Al-Qur'an sebagai petunjuk bagi seluruh umat manusia. Nasihat-nasihat ini mencakup prinsip-prinsip dasar agama dan moral yang penting.

Pertama, Luqman menekankan pentingnya tauhid (mengesakan Allah):

"Dan (ingatlah) ketika Luqman berkata kepada anaknya, ketika dia memberi pelajaran kepadanya: 'Wahai anakku! Janganlah engkau mempersekutukan Allah, sesungguhnya mempersekutukan (Allah) adalah benar-benar kezaliman yang besar'." (Luqman: 13)

Kedua, Luqman mengajarkan tentang berbakti kepada kedua orang tua:

"Dan Kami perintahkan kepada manusia (agar berbuat baik) kepada kedua orang tuanya. Ibunya telah mengandungnya dalam keadaan lemah yang bertambah-tambah, dan menyapihnya dalam usia dua tahun. Bersyukurlah kepada-Ku dan kepada kedua orang tuamu. Hanya kepada-Ku kembalimu." (Luqman: 14)

Namun, Luqman juga mengajarkan bahwa ketaatan kepada orang tua ada batasnya, yaitu jika mereka memaksa untuk melakukan kemusyrikan:

"Dan jika keduanya memaksamu untuk mempersekutukan Aku dengan sesuatu yang engkau tidak mempunyai ilmu tentang itu, maka janganlah engkau menaati keduanya, dan pergaulilah keduanya di dunia dengan baik, dan ikutilah jalan orang yang kembali kepada-Ku. Kemudian hanya kepada-Ku tempat kembalimu, maka akan Aku beritahukan kepadamu apa yang telah kamu kerjakan." (Luqman: 15)

Ketiga, Luqman mengajarkan tentang tanggung jawab individu dan pengetahuan Allah yang Maha Luas:

"(Luqman berkata): 'Wahai anakku! Sungguh, jika ada (sesuatu perbuatan) seberat biji sawi, dan berada dalam batu atau di langit atau di bumi, niscaya Allah akan memberinya (balasan). Sesungguhnya Allah Maha Halus, Maha Teliti.'" (Luqman: 16)

Keempat, Luqman menekankan pentingnya salat, amar ma'ruf nahi munkar, dan kesabaran:

"Wahai anakku! Laksanakanlah salat dan suruhlah (manusia) berbuat yang makruf dan cegahlah (mereka) dari yang mungkar dan bersabarlah terhadap apa yang menimpamu, sesungguhnya yang demikian itu termasuk perkara yang penting." (Luqman: 17)

Kelima, Luqman mengajarkan tentang etika dalam bergaul dengan sesama manusia:

"Dan janganlah kamu memalingkan wajah dari manusia (karena sombong) dan janganlah berjalan di bumi dengan angkuh. Sungguh, Allah tidak menyukai orang-orang yang sombong dan membanggakan diri." (Luqman: 18)

"Dan sederhanakanlah dalam berjalan dan lunakkanlah suaramu. Sesungguhnya seburuk-buruk suara ialah suara keledai." (Luqman: 19)

Nasihat-nasihat Luqman kepada anaknya ini menjadi panduan universal bagi pendidikan anak dalam Islam. Prinsip-prinsip yang diajarkannya mencakup hubungan manusia dengan Allah (tauhid dan ibadah), hubungan dengan orang tua, dan hubungan dengan sesama manusia (akhlak).

Meskipun tidak banyak informasi historis tentang Luqman yang tercatat dalam sejarah, nasihat-nasihatnya yang diabadikan dalam Al-Qur'an menjadi warisan berharga bagi umat Islam dan manusia pada umumnya. Kisah Luqman Al-Hakim mengajarkan kita tentang pentingnya kebijaksanaan dalam mendidik anak dan menanamkan nilai-nilai agama dan moral sejak dini.
      ''',
      category: 'Kisah Teladan',
      imageUrl:
          'https://images.unsplash.com/photo-1522202176988-66273c2fd55f?q=80&w=1000',
      summary:
          'Nasihat-nasihat bijak Luqman kepada anaknya yang diabadikan dalam Al-Qur\'an, mengajarkan tentang tauhid, berbakti kepada orang tua, tanggung jawab, dan etika pergaulan.',
      isFavorite: false,
    ),
  ];

  // Get all stories
  List<Story> getStories() {
    return List.from(_stories);
  }

  // Get story by ID
  Story getStoryById(String id) {
    try {
      return _stories.firstWhere((story) => story.id == id);
    } catch (e) {
      throw 'Cerita tidak ditemukan. Silakan coba lagi.';
    }
  }

  // Get all categories
  List<String> getCategories() {
    final categories = _stories.map((story) => story.category).toSet().toList();
    return categories;
  }

  // Toggle favorite status
  void toggleFavorite(String id) {
    final index = _stories.indexWhere((story) => story.id == id);
    if (index != -1) {
      final story = _stories[index];
      _stories[index] = story.copyWith(isFavorite: !story.isFavorite);
    }
  }

  // Get stories by category
  List<Story> getStoriesByCategory(String category) {
    return _stories.where((story) => story.category == category).toList();
  }

  // Get favorite stories
  List<Story> getFavoriteStories() {
    return _stories.where((story) => story.isFavorite).toList();
  }

  // Search stories
  List<Story> searchStories(String query) {
    return _stories
        .where((story) =>
            story.title.toLowerCase().contains(query.toLowerCase()) ||
            story.content.toLowerCase().contains(query.toLowerCase()) ||
            story.summary.toLowerCase().contains(query.toLowerCase()))
        .toList();
  }
}
