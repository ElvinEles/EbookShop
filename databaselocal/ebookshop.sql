-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 24, 2019 at 09:23 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ebookshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `book_id` int(11) NOT NULL,
  `book_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `book_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `book_category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `book_price` int(11) NOT NULL,
  `book_amount` decimal(10,0) NOT NULL,
  `book_about` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `book_active` int(11) NOT NULL,
  `book_author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `book_new` int(11) NOT NULL,
  `book_menu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`book_id`, `book_name`, `book_image`, `book_category`, `book_price`, `book_amount`, `book_about`, `book_active`, `book_author`, `book_new`, `book_menu`) VALUES
(7, 'Atamın Dostları', 'img/product/15557603771570680481atamindostlar-120x120.jpg', '7', 9, '10', 'value=\"value=\"value=\"Azәrbaycan әsilli görkәmli türk yazıçısı, siyasәtçi vә dövlәt xadimi Sәmәd Ağaoğlu (1909­1982) çağdaş Türkiyәdә memuar &nbsp;әdәbiyyatının görkәmli nümayәndәlәrindәn biri kimi tanınır. Onun&nbsp;oxuculara tәqdim olunan “Atamın dostları” kitabında atası, XX әsrin&nbsp;ilk onilliklәrindә Azәrbaycanın vә Türkiyәnin fikir hәyatında&nbsp;müstәsna xidmәtlәr göstәrmiş Әhmәd Ağaoğlunun (1869­1939)&nbsp;türkçülük hәrәkatında, sәnәt vә siyasәt alәmindә, yeni Türkiyәnin&nbsp;qurulması uğrunda mübarizәdә çiyin­çiyinә addımladığı bir sıra&nbsp;görkәmli şәxsiyyәtlәrin portretlәri yaradılıb. Müәllifin ad çәkmәdәn&nbsp;son dәrәcә sәciyyәvi cizgilәrlә rәsm etdiyi bu portretlәr özlәrinin,&nbsp;elәcә dә Әhmәd Ağaoğlunun hәyatının, mübarizә vә ideallarının bir&nbsp;sıra xüsusiyyәt vә keyfiyyәtlәrini aşkara çıxarır.\"\"\"', 0, 'Səməd Ağaoğlu', 1, 1),
(8, 'Azərbaycan Cümhuriyyəti Tələbələri', 'img/product/15557612461541374974cumhurtelebeh-228x228.jpg', '1', 35, '100', '<p>• Azərbaycan Cümhuriyyətinin xaricə tələbə göndərməkdə məqsədi nə idi?<br>• 102 tələbənin sonrakı taleyi necə oldu?<br>• Cümhuriiyət yıxıldıqdan sonrakı ağır illərdə xaricdəki tələbələrimiz hansı əzabları, məşəqqətləri yaşadılar? Kimlər həbs olundu, kimlər intihar etdi?<br>• Müstəqin Azərbaycandan yola salınmış gənclərdən Sovet imperiyasına qayıdanlar, qayıda bilməyənlər, qayıtmaq istəməyənlər kimlər idilər?<br>• Qürbət diyarlardan qayıtmayanların başına nələr gəldi?<br>• Vətənə dönmüş yüksək ixtisaslı mütəxəssislər öz istedad və bacarıqları ilə ölkənin yüksəlişinə necə xidmət etdilər və kommunist rejimi bu milli kadrları niyə və necə məhv etdi?<br>• Güllənənənlər, \"dünyanın o başına\" ölümə, \"gedər-gəlməz\"ə göndərilənlər, ailəsi dağılanlar, nəsli kəsilənlər barədə nələri bilmirik?<br>• Azərbaycanın azadlığı və müstəqilliyi uğrunda çarpışan hansı tələbələr şəhid oldu?</p><p>Dünyanın məşhur arxivlərinin materialları əsasında yazılmış və 15 illik zəhmətin məhsulu olan bu kitabda indiyədək heç yerdə rast gəlmədiyiniz çox maraqlı faktlarla, materiallarla qarşılaşacaq, əksəriyyəti ilk dəfə dərc olunan nadir sənədlərlə, fotoşəkillərlə tanış olacaqsınız...</p><p>\"Fikrimcə, bu əsər təhsil tariximizə dair Azərbaycanda indiyədək yazlmış ciddi monoqrafiyalardandır. əsərin qiymətli cəhətlərindən biri də qələmə alınmış hər fikrin inkaredilməz sənədlərlə əsaslandırılmasıdır\".<br>Yaqub MAHMUDOV,<br>AMEA Tarix İnstitutunun direktoru, ANEA-nın müxbir üzvü</p><p>\"Bu, ciddi elmi monoqrafiya olsa da bədii əsər kimi maraqla oxunur. Müəlliflər əslində mümkünsüz görünən bir işi gerçəkləşdiriblər-əsərdə tələbələrin hər biri haqqında ayrıca bioqrafik məlumat verilib, indiyədək əl dəyməmiş yüzlərlə arxiv sənədi üzə çıxarılıb! Azərbaycan arxivlərinə verdiyim sənədlərdən də gen-bol istifadə edilməsindən, əlbəttə, qürur duyuram\".<br>Ramiz ABUTALIBOV,<br>UNESCO-nun keçmiş şöbə müdiri</p><p>\"Titanik əməyin məhsulu olan bu kitabda biz yalnız 102 tələbənin taleyi ilə deyil, XX yüzilin birinci yarısındakı Azərbaycan ziyalılığının tarixi ilə də tanış oluruq\".<br>Teymur KƏRİMLİ,<br>AMEA Humanitar Elmlər Bölməsinin akademik-katibi,<br>AMEA Əlyazmalar İnstitutunun direktoru, akademik</p>', 0, 'Ədalət Tahirzadə', 1, 1),
(9, 'Bakı Və Bakılılar', 'img/product/15557614071657237341bakililar-228x228.jpg', '1', 7, '25', 'Azərbaycan xalq yazıçısı və Bakı tarixinin bilicisi Qılman İlkinin “Bakı və bakılılar” kitabında Bakı və onun qədim tarixi haqqında çox maraqlı məlumatlar əldə edəcəksiniz. Bakı milyonçuları və ziyalıları, ruhaniləri, qoçuları və hambalları, Bakı mətbuatı, təhsil və maarifin səviyyəsi xanlıqlardan tutmuş bu günümüzə qədər paytaxtımızın mənzərəsini ustalıqla təsvir edən yazıçımızın bu əsəri Sizi boş buraxmayacaq. Oxunaqlı dillə qələmə alınmış bu əsəri yaşı çox olan fotolar bəzəyir.<br>Sizi bu maraqlı kitabla baş-başa buraxırıq.', 0, 'Qılman İlkin', 1, 1),
(10, 'Barbaros Xeyrəddin Paşa', 'img/product/1555762349461899639xaleddinpasha-228x228.jpg', '1', 3, '5', '<p>Azərbaycan dilinə uyğunlaşdıranı: Elxan Rzayev</p><p>Osmanlı imperiyası Dəniz Donanmasının əfsanəvi Baş komandanı, Avropada Barbaros (Kürənsaqqal) adı ilə məşhur olan Xeyrəddin (Xızır) Paşanın (1478-1546) öz dilindən yazılmış və 1965-ci ilə qədər türk dilində nəşr edilməmiş xatirələri sizi türk hərb tarixinin zəngin səhifə-lərinə götürəcək, bu böyük şəxsiyyətin həyat və fəaliyyəti ilə tanış edəcəkdir.</p>', 0, '', 1, 1),
(11, 'Beriya, Devid Hollovey Və Donald Reyfild Və Qrover', 'img/product/1555762397625093414beriya-228x228.jpg', '1', 9, '23', '<p>Stalinin ölümündən sonra Sovet İttifaqının növbəti rəhbəri Lavrenti Beriya olmalı idi, lakin Xruşşovun sui-qəsdi nəticəsində o devrildi və qətl edildi.</p><p>Tarixi nöqteyi-nəzərdən Beriyanın şəxsiyyəti o vaxtdan müxtəlif cür qiymətləndirilir.&nbsp; Sovet siyasi və ideoloji savaşlarından uzaq Qərb tədqiqatçıları bu məsələyə daha obyektiv yanaşırdılar.</p><p>Diqqətinizə çatdırılan bu kitabda aparıcı Qərb sovetoloqları – ingilis professorları D.Hollovey və D.Reyfild və Amerika professoru Q.Ferr – Beriyanın siyasi portretinə və fəaliyyətinin nəticələrinə öz düşündükləri kimi yanaşırlar. Onların tədqiqatları təkçə çoxlu sayda sənədli mənbələrə yox, həm də Lavrenti Beriyanı şəxsən tanıyan insanların xatirələrinə əsaslanır. Başlıca diqqət onun rəhbərliyi altında yaradılmış BAŞDİ – QULAQ imperiyasına yetirilir.</p>', 0, '', 1, 1),
(12, 'Frida Kahlo: Eşq Və Qəm', 'img/product/15557624681808104078Frida-Kahlo-qapaq-Esas-228x228.jpg', '1', 9, '5', 'Əsərdə iyirminci əsrin tanınmış simalarından olan inqilabçı və feminist Frida Kahlonun həyatı öz əksini tapmışdır. O, ruhunu qatdığı Meksika inqilabını öz doğum günü elan edəcək qədər fərqli, dünyaya gəlməyən oğluna ad qoyub təsəvvüründə onunla danışacaq qədər xəyalpərəst, əlil arabasına məhkum qaldığı halda belə sənətindən və həyatından imtina etməyən, daim mübarizə aparan bir qadın idi. Nəzərdən uzaq olan həyatında taleyi ilə barışmağı deyil, əfsanə olmağı seçən Frida ölümü də həyat kimi başında çiçəklər və həmişəki gözəlliyi ilə qarşılamışdır.', 0, 'Rauda Jamis', 1, 1),
(13, 'Fərqlilər,', 'img/product/15557625281915443389ferqlilerr-228x228.jpg', '1', 10, '8', '<p>Kitabda cümhuriyyət tariximizin məşhur simaları M.Ə.Rəsulzadəyə, Ə.Topçubaşova, Ə.Hüseynzadəyə, Ə.Ağaoğluna, A.İldırıma, M.B.Məmmədzadəyə, İ.Aşurbəyliyə, Ə.Cəfəroğluna, eləcə də M.Ş.Vazehdən dərs almış alman şairi F.Bodenştedtə aid olduqca maraqlı şəkil və məktublarla, Azərbaycan Parlamentinin açıldığı gün çəkilmiş nadir foto ilə, \"Həyat\" qəzetinin redaksiyasına, o dövrün digər məşhur təşkilatlarına, öndə gedən digər şəxsiyyətlərinə aid yeni məlumatla tanış olacaqsınız. Unikal sənədlər sayəsində bir çox bu kimi suallara da cavab tapacaqsınız:</p><p>Bakının xilaskarı Nuru paşanı kim öldürüb?<br>Nazim Hikməti Azərbaycanda təəccübləndirən nə idi?<br>Şəfiqə xanım Qaspıralı Nəsib bəy Yusifbəylinin sevgisindən niyə imtina edib?<br>Məmməd Səid Ordubadi Tiflis zindanında nələr görmüşdü?<br>Azərbaycanın ilk naşiri kim olub?<br>\"Molla Nəsrəddin\" jurnalı necə yaranıb?<br>Mirzə Kazımbəy niyə xristianlığı qəbul edib?<br>Heydər Hüseyunovu iki dəfə intihara vadar edən səbəb nə idi?<br>Marksı dilimizə ilk dəfə tərcümə edən Ruhulla Axundovu niyə öldürüblər?</p>', 0, 'Dilqəm Əhməd', 1, 1),
(14, 'Fərəh Pəhləvi', 'img/product/15557625791909944330ferehpehlevi-228x228.jpg', '1', 7, '9', '<p><em>Yıxılan rejimin və bitməyən eşqin hekayəti</em></p><p><span>Sonuncu İran şahı Məhəmməd Rza Pəhləvinin xanımı, əslən azərbaycanlı olan Şahbanu Fərəh Pəhləvinin (Diba) xatirələri bu ölkənin az qala 60 illik tarixinə işıq salır.<br>Bu əsər memuar və tarixi janrda olsa da dramatik bir sevgi dastanını xatırladır, bu baxımından geniş oxucu kütləsi üçün nəzərdə tutulub.<br>Əsərin tərcümə və redaktə tərzi tərcüməçinin təqdim etdiyi qaydada saxlanmışdır.</span></p>', 0, 'Xatirələr', 1, 1),
(15, 'Gündəliklər', 'img/product/15557626371756851890Xelil-Rza-Uluturk---Gundelikler---cover1-228x228.jpg', '1', 20, '6', 'Böyük Azərbaycan şairi, tənqidçi, tərcüməçi və ictimai-siyasi xadim Xəlil Rza Ulutürk özündən sonra zəngin və bənzərsiz ədəbi irs qoyub. Onun indiyə qədər onlarla kitabı nəşr olunub. Xəlil Rza Ulutürkün bircə ay da fasilə vermədən az qala bir qərinə ərzində qələmə aldığı “Gündəliklər”i isə geniş oxucu kütləsinə hələ məlum deyil. Bu kitaba böyük ədibin memuarlarının 1962-1965-ci illəri əhatə edən hissəsi daxil olunub. Çətin mübarizə yolu keçmiş dissident-şairin qaynar gənclik illərinin unudulmaz anlarını əks etdirən bu xatirələr ilk dəfə işıq üzü görür. Memuar ədəbiyyatımızın incilərindən sayılan “Gündəliklər” müəllifin müşahidələri, şəxsi həyatında baş vermiş hadisələr, adının çəkilməsi belə illər uzunu qadağan olunmuş görkəmli ədiblərlə, ictimai-siyasi xadimlərlə şəxsi söhbətləri zamanı eşitdiyi əhvalatlar, əldə etdiyi faktlar və məlumatlar əsasında qələmə alınıb. Milli ruhu, milli ideyanı ön plana çəkən bu yazılar 60-cı illərin hələ də naməlum qalan bir çox taleyüklü məsələlərinə işıq salır. “Gündəliklər” XX əsr tariximizə fərqli baxış nümunəsi kimi çox qiymətli mənbədir.', 0, 'Xəlil Rza Ulutürk', 1, 1),
(16, 'Hürrəm', 'img/product/15557627721786685267hurrem-228x228.jpg', '1', 9, '12', 'Uşaq vaxtı ailəsindən qoparılıb başqa bir ölkənin torpaqlarına aparılan, qul bazarından alınaraq padşahın qucağına atılan bir şimal qadını, dərdlərini içində dəfn edərək, üst-üstə yığılmış intiqam duyğularını üzə çıxarmışdımı? Tarixi quru bir hekayət olmaqdan qurtarmaq məqsədi daşıyan bu kitab qərəzsiz, cəlb­edici və dominant xarakterli Hasekinin həm tarixi şəxsiyyət kimi necə gücə çevrildiyini, həm də onun necə insan olduğunu göstərərək Osmanlı tarixindən bir bölümü oxucuya roman dadında çatdırmaq üçün yazılıb.', 0, 'Erdem Sabih Anılan', 1, 1),
(17, 'İlon Maskın Həyat, Biznes, Uğur Və Sahibkarlıq Dər', 'img/product/15557630531933313650ilon-qapaq-əsas-300x400-228x228.jpg', '1', 5, '23', '<p>İlon Mask amerikalı olmasa da Amerika arzusunun simvoludur. O, həqiqətən həyatda öz-özünə yol açmışdır. Universitetdə oxumaq üçün işləyib pul qazanmış, yeni inkişafda olan internet sahəsində ilk biznesini yaratmış və 30 yaşına çatmamış milyonçu olmuşdur.</p><p>Gördüyü işlər sayəsində indi İlon Mask hərəsinin dəyəri milyardlarla dollardan artıq olan iki şirkətin rəhbəridir və özünün şəxsi varidatı artıq 11 milyard dolları keçib.</p><p>Bu kitab yenilənmiş və əlavələr edilmiş orjinalın&nbsp;3-cü nəşrindən tərcümədir. Maskın həyatından ibrət dərsləri götürmək üçün onu oxuyun və öyrənin.</p><p><strong>&nbsp;</strong></p><p><strong>Elon Musk</strong></p><p><strong>ELON MUSK`S BEST LESSONS FOR LIFE,</strong></p><p><strong>BUSINESS, SUCCESS AND ENTREPRENEURSHIP!</strong></p><p>2018, 112 səhifə, 1000 tiraj</p><p>Tərcüməçi: Kazım Səlimov</p><p><span><strong>&nbsp;</strong>ISBN 978-9952-36-485-9</span></p>', 0, 'İlon Mask', 1, 1),
(18, 'İsmayıl', 'img/product/1555763138149438944ism-son-son-228x228.jpg', '1', 6, '3', '<p>Roman Şah İsmayılın həyatından bəhs edir. Əsər Anadolu Ələ­­viliyinin yaranması, Səfəvilərin bir təriqətdən necə dövlət ha­­lına gəlməsinə&nbsp; işıq salır.</p><p>İsmayıl uşaqkən atası Heydərin böyük qardaşı Sultan Əli tə­rə­­fin­dən öldürülməsi nəticəsində erkən yaşda təriqətin başına ke­­­çirilir.</p><p>Müəllif Şah İsmayılın duyğularını kitabda belə ifadə edir: «Hə­yatım yuxuda keçdi, yuxularımda Nəsimi, Fəzlullah, Sa­bah, Babam Cüneyd və&nbsp; atam Heydər gəzib dolaşdı. Nə öyrəndimsə bu yuxulardan öyrəndim. Bunların kimi qılıncla, kimi də odla öl­dürüldü. Kimi də ov heyvanı kimi qovuldu, qaçıb gizlənmək məcburiyyətində qaldı. Artıq fələyin bu oyununu oynamaya­ca­ğam. Ov bitdi, indi ovçu mənəm».</p><p>Şah İsmayılın Yavuz Sultan Səlimlə döyüşü, həyat yoldaşı Taclı Xatunun əsir edilməsi, Yavuz Sultan Səlimin Anadoluda minlərlə şiə Qızılbaşı öldürtdürməsi faciələri kitabda öz əksini tapmışdır. Şah İsmayılın iki həyat yoldaşı var. İkisinin də adı Tac­lı Xatun. Əsir edilib nökər olaraq alınan Taclı Xatun İsma­yı­lın ikinci həyat yoldaşı. İlk həyat yoldaşı olan Taclı Xatun İs­ma­yılın dayısı qızı.</p><p>«İsmayıl» gözəl, romantik, bəzən kədərli, ümumiyyətlə, ta­rixi hadisələri öz axarı içində izah edən bir kitabdır. Nəcm və Şah İs­mayılın söhbətlərində dini-təsəvvüfi mövzular şərh edilir. Axı­­­­­cı olduğu üçün asanca oxuna bilir.</p><p>Türk dilindən tərcümə: Arif Əmrahoğlu,&nbsp; Paşa Əlioğlu</p><p>Bakı, Qanun Nəşriyyatı, 2012</p><p>Qiyməti 6 azn</p><p>Müəllifdən xüsusi olaraq &nbsp;Azərbaycan nəşri üçün.</p><p>«İsmail» yayımlandığından tam on üç sene sonra Azerbay­can’da basıldı ve Azerbaycan Türkleriyle buluşacak! Artık öl­sem de gam yemem!</p><p>Bütün bir «Soğuk Savaş» boyunca kasıtlı olarak en azından «rakip» ilan edilmişti Şah İsmail Hatayi. «Rakip» dedi isem bi­le­siniz ki bu en hafifinden bir kelimedir. Kaldı ki hala onu rakip ve hatta düşman ilan edenler yok mudur ki!</p><p>Biz Türkiye Türkleri’ne seneler önce şunu anlatmaya ça­lış­mıştık; Çaldıran’da biz Türkler kendi kendimizle savaştık! Sa­vaşın galibi de, mağlubu da biz olduk ve dolayısıyla bizler iki kez, iki misli kaybettik! Hala, bu gerçeği kendilerine tam an­la­mıyla anlatabildiğimizi zannetmiyorum. Daha çok yazmak ve da­­­ha çok söylemek gerekecek.</p><p>Öte yandan Şah İsmail Hatayi bir büyük devlet adamı de­ğil­dir sadece. Belki ondan çok daha önemlisi O bir düşünür, bir ulu şairdir. Pirdir. Mürşiddir.</p><p>Romanımızda biz onu bütün bu yönleriyle ele almaya ça­lış­tık ve «insan» hatta «kırılgan insan» yönüyle de tanımaya uğraş verdik. Elbette bu elinizdeki kitap bir romandır ve pek çok kur­gusal olayla, anlatıyla doludur. Yine elbette biz is­te­meden ya­zım sürecinde hatalar yapmış olabiliriz. Önemli olan niyettir ve Azerbaycan’da kitabımızı okuyan kardeşlerimiz umarım ni­ye­timizin temizliğini göreceklerdir.</p><p>Son olarak bu kitabın elinize ulaşması için zahmetler gös­te­ren değerli yayımcı Sayın Shahbaz Xuduoglu beyefendiye te­şek­kür eder tüm Azerbaycan’lı kardeşlerimi sevgiyle ku­cak­la­rım.</p><p>Reha Çamuroğlu</p>', 0, 'Reha Çamuroğlu', 1, 1),
(19, 'Azərbaycan Sovet Ensiklopediyası (ACE) (10 Cild)', 'img/product/15557632031622999795z-228x228.jpg', '2', 70, '10', '70.00', 0, '', 1, 1),
(20, 'Dünya Bir Pəncərədir', 'img/product/15557632521549211514anar-228x228.jpg', '2', 7, '6', 'Kitaba müəllifi bədii -sənədli yazıları, esseləri, oçerkləri yol qeydləri xatirələri saxil edilib.Kitab üç bölmədən ibarətdir.Buraya \"Vətənimdir vətənim\" , \"Gəlimli -gedimli dünya\" &nbsp;xalq şairləri R.Rza və N.Rəfibəylinin Xatirəsinə həsrt edilən \"Sizsiz\" xatirə-romanı daxil edilmişdir.', 0, 'Anar', 0, 1),
(21, '110 Nəsnə. Hərəsindən Bir Az', 'img/product/15557633441713904974Markes-100-il-tenhaliq-kapak-4- (1)ff-228x228.jpg', '3', 9, '3', '“Yüz ilin tənhalığı” romanında Buendia&nbsp; nəslinin yaran­ma­sı, yük­sə­lişi, qürubu və məhvi əks etdirilmişdir. Bu nəslin tarixi – hər bir Buendia&nbsp; üzvünün&nbsp; taleyində bu və ya digər şəkildə təzahür edən tən­halıq hekayətidir. Tənhalıq, ailə üzvlərinin bir-birindən aralı düş­­məsi, onların bir-birini anlaya bilməmələri romanda, hə­qi­qətən, mifik xarakter daşıyır. Buendia&nbsp; ailəsinin bir neçə nəs­li­nin ta­rix­çəsinin özü və bununla yanaşı onun xarakterik xüsu­siy­yətləri – insestə meyil və onun lənətlənməsi, qəhrəmanların&nbsp; tale­lə­rinin qabaq­cadan müəyyən edilməsi nəsil mifi xarakteri qazanır. Ro­manda o, Makon­do­nun və bütün Buendia üzvlərinin həlakına bir neçə dəqiqə qalmış bu nəs­lin sanskrit dilində yazılmış tarixçəsini açmış qaraçı Melkiades surətində təcəssüm edir. Eyni zamanda, romanda mif parodiyası da var. Qəsdən yaratdığı mifoloji qur­ma­larda, nəql etmənin adiliyində təzahür edən, hərdən cəfəng və aş­kar fan­tas­tik hadisələrdən danışan müəllifin xüsusi kinayəli gü­lüşü parodiya vasitəsidir. Latınamerikan nəsrinin mifyaradıcı “mö­cü­zə­nin reallığı”, “magik realizm” romanda Amerikanın tək­rarsız sima­sının yaradılmasının va­cib vasitəsi və eyni zamanda özünə bir pa­ro­diya kimi çıxış edir.<br>', 0, 'Niyazi Mehdi', 1, 1),
(22, '19849', 'img/product/15557635091203969311984-228x228.jpg', '22', 8, '60', 'value=\"value=\"<p>2011. 436 səh.</p><p>Görkəmli ingilis yazıçısı Corc Oruellin (1903-1950) ya­ra­­dıcılığı dünya miqyasında məş­hur­dur. Xüsusilə onun “1984” romanı və “Hey­va­nıstan” povesti ötən yü­z­illikdə sözün, ədəbiy­yatın totalitar təfəkkürə və des­­­potik idarəçilik üsullarına qarşı mübarizəsinin ən diq­­qətəlayiq nümunələrindən sayılır. Hər iki əsər ya­ran­­dığı vaxtdan ədəbi və siyasi fikrin diqqət mər­kə­zin­də olmuş, müxtəlif dillərə çevrilmiş və ciddi polemika do­ğurmuşlar. Oruell nəsrinin mühüm, diq­qətəlayiq nü­­­munəsi sayılan “1984” romanı Azər­baycan dilində ilk dəfə, həm də orijinaldan tərcümədə çap olunur.</p>\"\"', 0, 'Corc Oruell', 1, 1),
(23, '20000 Lyö Su Altı Ilə', 'img/product/1555763583931826083Jul-Vern-Qapaq-Esas-228x228.jpg', '3', 10, '17', '<p>Jül Vernin “20000 lyö su altı ilə” romanı, Nautilus adlı sualtı gəmi ilə səyahət edən Kapitan Nemo və dənizaltı dünyaya qonaq olan elm adamı Aronaksın etdikləri səyahət və yaşadıqları macəralardan ibarətdir. Əsərin qəhrəmanları köpəkbalıqları ilə vuruşmaqdan tutmuş, su altında vulkan partlaması kimi, bir çox macəralar yaşayır, Atlantik qitəsini ziyarət edir, Cənub qütbünü kəşf edirlər.</p><p>Romanda XIX əsrin ikinci yarısında dənizçiləri narahat edən, dəniz və okeanlarda peyda olub, alimlərin “dəniz əjdahası” ad­landırdığı işıqsaçan, milşəkilli əşyanın varlığın­dan və törətdiyi fəlakətlərdən bəhs&nbsp; olunur.</p>', 0, 'Jül Vern', 0, 1),
(24, 'Adım Anonim Qalsın', 'img/product/15557636691690430610adim25-228x228.jpg', '3', 3, '19', '<p><strong>Hekayələr, mənsur şeirlər, esselər</strong></p><p>Müəllifin son illərdə yazdığı hekayə, esse və mənsur şeirlər yer alıb. İlk kitabında olduğu kimi, bu kitabda da müəllif öz nəsr əsərlərini əsasən novella üslubunda bitirir, son sözü və nəticəni oxuculara buraxır. Sevgi, sevinc, fərəh, peşmanlıq, mübarizə, məğlubiyyət, sosial problemlər, bədbinlik və ümidsizlik… Bir gəncin yaşadığı bütün duyğular bu kitabda əks olunub.</p>', 0, 'Rüfət Əhmədzadə', 0, 1),
(25, 'Advent', 'img/product/15557637181323876393advent-228x228.jpg', '3', 4, '13', '<p>Qunnar Qunnarsonun bayram haqqında heyrətamiz hekayəti. Əsər real hadisələr əsasında yazılmışdır. Hər il Milad bayramı ərəfəsində artıq heç də cavan olmayan Benedikt itmiş qoyun-quzunu toplamaq və onları ölümdən qurtarmaq üçün dağlara yollanır. Ona bu işdə etibarlı dostu Leo və cəsur qoyun Çətin kömək edir. Bu dəfə isə onlar qar basmış yollarda, uca dağlarda yalnız itmiş qoyun-quzunun həyatı üçün deyil, həm də öz həyatları üçün mübarizə aparmalı olacaqlar. Dostluq, cəsarət və təbiətlə mübarizə aparmaq haqqında roman.</p><p>Ətrafda heç nə yoxdur, yalnız ulduzlar, qar və dağlar...</p><p>&nbsp;</p><p><em>Tərcümə: Anar Rəhimov</em></p>', 0, 'Qunnar Qunnarson', 0, 1),
(26, '5.45 Hekayələr', 'img/product/15557637771266487214.45-228x228.jpg', '3', 5, '24', '“<strong>5.45</strong>” – kitabı müəllifin son illərdə qələmə aldığı 15 hekayədən ibarətdir. Əsasən detektiv janrda yazmağa üstünlük verən müəllifin bu kitabında yer alan əsərlərdə hadisələr xəfiyyə ədəbiyyatının hüdudlarından kənarda cərəyan edir. Kitabda Qarabağ, məhəbbət və ictimai mövzulu hekayələr toplanmışdır.', 0, 'Müşfiq XAN', 0, 1),
(27, '46 Bənövşə', 'img/product/1555763843939007447^A8505F65CF8AA0ABAB37A39256D189F2C13D1FA063CCB76EEA^pimgpsh_fullsize_distr-785x1192-228x228.jpg', '3', 4, '26', '<p>Sovet-Azərbaycan ədəbiyyatının ən çox oxunan müəlliflərindən biri Salam Qədirzadənin “46 bənövşə”si maraqlı tarixçəsi olan əsərdir. Bu kitabın öz yaranışından bəhs edən üslubu var.</p><p>Bir gün Mənzərə adlı bir xanım yazıçının çalışdığı redaksiyaya gəlir. Yazıçıda maraq oyadaraq əkiz bacısı, yazıçı olmaq arzusu ilə gündəliklər yazan Könülün iki dəftərini ona verir. Sadəcə oxuyub fikir bildirməsini xahiş edir. Sovet illərinin sevgi və iztirablarını, gəncliyin əyləncə və məşğuliyyətlərini anlamaq üçün bu əsər olduqca maraqlıdır. Təsvir olunan hadisələr, mövzunun əlvanlığı, gənclərin duyğu və düşüncələri çox səmimi, şirin və təsirli dillə qələmə alınıb.</p><p>Beləliklə, böyük fransız yazıçısı və filosofu Alber Kamünün “…Var olmaq, yaşamaq, ölümә doğru getmәk demәkdir. Ölüm maһnının son sözüdür. Biz, necə deyәrlәr, ölüm cәzasına mәһkum olunmuş, ancaq һökmü nә vaxt vә һarada yerinә yetirilәcәyini bilmәyәn, yoldaşlarının isә hәr gün edam edildiyini görәn kimsәsiz insanlarıq” epiqrafı ilə başlayan gündəliklər “46 bənövşə” adı ilə oxuculara təqdim olunur.</p>', 0, 'Salam Qədirzadə', 0, 1),
(28, '365 Gün', 'img/product/15557638931506847945Ruzbeh-Qapaq-Esas-300x400-228x228.jpg', '3', 3, '29', '<div>Bəzən heç nəyə əl vurmadan baş götürüb getmək istəyir, adam. Yaşamaq üçün çoxdur bu ömür, inanın mənə.</div><div>“Narahat olma, düzələr”ə qalır üç yüz altmış beş gün həyat. Hər addımda qarşına çıxan dolanbac yollar və it günündə yaşamaqdan başqa bir şey deyil, dünya. Ala-toranlıqda ümid gəzməkdi bir cib sıxıntıyla, əlləri boş, hədər yerə gün yandırmaqdı, mənəvi &nbsp;işgəncədi…<p>&nbsp;</p></div><div>Bakı, Qanun Nəşriyyatı, 2014, 104 səh</div>', 0, 'Ruzbeh Məmməd', 0, 1),
(29, '35 Kiloqram ümid', 'img/product/155576394448655828535 kq umid-500x500-228x228.jpg', '3', 2, '33', '\"35 kiloqram ümid\" - əsər həyat yolununun seçimi, məhəbbətin və sədaqətin gücü haqqındadır. On üç yaşlı məktəbli Qreqorinin bədii dilinin gözəlliyi ilə fərqlənən bu hekayəsi öyrədir ki, arzular yerinə yetir və yerinə yetməlidir. Yetər ki, 35 kiloqram ümidiniz olsun.', 0, 'Anna Qavalda', 0, 1),
(30, '35 Kiloqram ümid', 'img/product/155576394490163095635 kq umid-500x500-228x228.jpg', '3', 2, '33', '\"35 kiloqram ümid\" - əsər həyat yolununun seçimi, məhəbbətin və sədaqətin gücü haqqındadır. On üç yaşlı məktəbli Qreqorinin bədii dilinin gözəlliyi ilə fərqlənən bu hekayəsi öyrədir ki, arzular yerinə yetir və yerinə yetməlidir. Yetər ki, 35 kiloqram ümidiniz olsun.', 0, 'Anna Qavalda', 0, 1),
(31, 'Aforizmlər', 'img/product/15557641461323468851aforizmler-228x228.png', '4', 4, '18', '', 0, 'Müdrik Nəsihətlər', 0, 1),
(32, 'Abituriyentin Yaddaş Kitabı', 'img/product/15557641866471559ABİTURIYENTIN YADDAŞ KITABI-228x228.jpg', '4', 1, '22', '<p>İMTAHANLARA NECE HAZIRLAŞMALI ?</p><p>İMTAHAN ÖNCƏSİ NƏLƏRƏ DİQQƏT ETMƏLİ ?</p><p>İMTAHAN ZAMANI NECE DAVRANMALI ?</p>', 0, '', 0, 1),
(33, '50 Nobel Mükafatçısı: Onlar Allaha Inanırdılar', 'img/product/15557644607276725301 50-228x228.jpg', '5', 5, '100', 'Kitaba dünya şöhrətli alim və yazıçıların Allah haqda sənədlərlə sübut olunmuş fikirləri daxil edilib. Bu kitab on bir illik tədqiqatların nəticəsidir. Müəllif bu kitabı tərtib etmək üçün yüzlərlə kitab, məqalə və məktubları tədqiq etmiş, əsasən də Bolqarıstan milli kitabxanasının, Milan ictimai kitabxanasının və Avstriya milli kitabxanasının arxivlərindən istifadə edib. Hazırda həyatda olan bir çox Nobel mükafatı laureatlarının da Allah haqqında fikirləri öyrənilib.', 0, '', 0, 1),
(34, 'Atalar Sözü Və Məsəllər', 'img/product/15557645001800176660atalar sozleri-228x228.jpg', '5', 3, '36', '', 0, '', 0, 1),
(35, 'Atalar Sözü Və Deyimlər', 'img/product/1555764567910159265atalar sozu-228x228.jpg', '5', 5, '33', 'Atalar sözü və xalq deyimləri xalqın milli təfəkkürünün, həyat duyumunun, dünya görüşünün, dini etiqadlarının, məişətlə bağlı qənaətlərinin, bir sözlə, milli dəyərlər sisteminin ifadəsi və ölçüsüdür.', 0, 'Teymur Əhmədov', 0, 1),
(36, 'Amarna Günahkarları', 'img/product/15557646261360487203anarma-228x228.jpg', '5', 5, '42', '', 0, 'Xanım Anela', 0, 1),
(37, 'Alamo 13', 'img/product/15557646671887481113alamof-228x228.png', '5', 13, '41', 'Şəxsi inkişaf üçün əvəzsiz əhəmiyyəti olan “Kvan” kitabının müəllifindən hər kəsin arzusuna, iradəsinə və məqsədinə mayak olacaq “Alamo 13” əsəri. Həyat gözləyənləri yox, hərəkət edənləri sevir.“Alamo 13” hər kəsi öz məqsədi üçün ilk addımı atmağa ruhlandıracaq. Bu əsər kimlər üçünsə ilk addımın özü olacaq. Məqsədini bu əsərdə tapanlar da az olmayacaq. Bu əsər hər kəsin sığındığı qaladır. Təslim olanda belə udmağı bacaranların, uduzanda belə qalib olanların qalasıdır', 0, 'Coşqun Kərimov', 0, 1),
(38, '7 Qısa Izahla Fizika', 'img/product/155576470910075348407 izah.-228x228.jpg', '5', 4, '21', 'Çağdaş fizik Karlo Rovelli bu kitabı ilə 20-ci əsr fizika elminin əsas məsələlərinə mükəmməl səyahət vəd edir. Sadə izahı ilə dünyanı sehirləyən, 40-dan çox dilə tərcümə olunan və yayımlandıqdan qısa müddət sonra ‘’Ən çox satılanlar’’ siyahısında birinci yerə yüksələn ‘’7 qısa izahla Fizika’’ bu sahə ilə əlaqəsi olmayan bir şəxs üçün də olduqca başa düşüləndir. Rovelli Fizika sahəsində gerçəkləşən böyük inqilabın ən sehirli istiqamətlərini və ortaya atdığı sualları hədəfə alır.<br><br>‘’Nəzəri fizika həyatımızı istiqamətləndirən ehtiraslarımızdan və hisslərimizdən qidalanır’’, deyən Rovelli əsasən bizdən uzaqda qalan elmin əslində, bizi əhatələyən kainat qədər yaxınlığımızda olduğunu göstərir.&nbsp;', 0, 'Carlo Rovelli', 0, 1),
(39, '55 Dərsə Excel', 'img/product/15557647971745805074excel-228x228.jpg', '5', 20, '4', '<p>Böhran ixtisarlarla xarakterizə edilir. Qazanılmış bilik isə rəqabət üstünlüyü deməkdir. Əgər sahib olduğunuz bilik xüsusi bilikdirsə, bu sizin bir addım öndə olmanız deməkdir. Bu gün ölkəmizdə Exceli bilən və uzun müddətli dövrdə işsiz olan oxucumuz yoxdur və ya biz tanımırıq.</p><p>“55 dərsə Excel” layihəsinin müəllifi&nbsp;Nahid Nəsirov&nbsp;tərəfindən eyni adlı kitab artıq nəşr edilmişdir. Qısa müddətdə 850 kitab artıq öz oxucusu tərəfindən oxunmuşdur. Kitabda 0-dan başlayaraq mükəmmələ doğru Excelin bütün əmrləri, menyuları (Macro xaric), 222 funksiyası izah edilmişdir. Kitabın&nbsp;mündəricatı&nbsp;ilə və bəzi&nbsp;nümunələrə&nbsp;bu linkdən baxa bilərsiniz.</p>', 0, 'Nahid Nəsirov', 0, 1),
(40, 'İnsanın Köləliyi Və Azadlığı Barədə', 'img/product/1555765047348639022Berdyayev-Insanin-Koleliyi-Esas-300x400-228x228.jpg', '6', 7, '14', '<p>Berdyayevin özünün – “kitablarımın arasında ən radikal, ən çox mənəvi inqilabi ruhda yazılmış” – kimi səciyyələndirdiyi “Köləlik və insan azadlığı haqqında. Personalizm fəlsəfəsinin təcrübəsi” kitabı, onun əsas kitablarından biridir. Köləlik və azadlıq – demək olar ki, Berdyayev bundan başqa bir şey haqqında yazmayıb. Köləlik, cəfəngiyat, bayağılıq, zorakılıq, dövlət, zərurət, bu dünyanın qüvvələri, insanı qul edənlərdir. Azadlıq —&nbsp; insan həyatının mahiyyəti və məqsədi, dünya dramının və ilahi müjdənin mahiyyətidir.</p><p>Tərcüməçi: Vaqif Azəryar</p>', 0, 'Aleksandr Berdyayev', 0, 1),
(41, 'Görüntülər', 'img/product/15557651551420947201goruntuler-228x228.jpg', '6', 5, '14', 'Görüntülər” İbn Sinanın irfan mövzusunda yazdığı ən dəyərli və nadir əsərlərindəndir. İrfan, kəramətlər, möcüzələr, qeybi xəbərlər, sehr, göz dəyməsi, mələklərin nazil olması, mənəvi seyr, qeybi aləmlər, yuxular, vəhy, mükaşifələr və onların xüsusiyyətləri kimi bir çox dəyərli mövzularla əlaqədar qaranlıq nöqtələr məhz bu əsərdə öz həllini tapacaqdır. İbn Sina bu kitabda ariflərə nisbət verilən uzun müddət ac-susuz qalmaq, qeybdən xəbər vermək, ətraf əşyalarda təsərrüf etmək kimi qeyri-adi xüsusiyyətləri elmi və əqli dəlillərlə isbat edir. Mövzu ilə əlaqədar maraqlı faktları ortaya qoyur. Bununla da ariflərə nisbət verilən bütün bu işlərin xurafat olmadığını bildirmək istəyir.', 0, 'Şeyx Əbu Əli İbn Sina', 0, 1),
(42, 'Fəlsəfənin Problemləri', 'img/product/1555765301425013813felsefe-228x228.png', '6', 7, '42', 'Böyük ingilis riyaziyyatçısı, filosofu və ictimai xadimi Bertran Rasselin 1912-ci ildə işıq üzü görmüş “Fəlsəfənin problemləri” əsəri çap olunduğu gündən indiyədək ingilisdilli ölkələrdə fəlsəfə ilə ilkin tanışlıq üçün ən yaxşı kitablardan biri sayılmaqdadır. Əsərin yazı dilinin elmi-populyar stildə olması onu təkcə fəlsəfə üzrə çalışanlar üçün deyil, həm də çox geniş oxucu çevrəsi üçün də anlaşıqlı bir kitaba çevirir. Baxışlarınıza çatdırdığımız bu əsərin fəlsəfə üzrə zəruri biliklər qazanmağınıza və ümumilikdə maraq dairənizin genişlənməsinə xidmət göstərəcəyini düşünürük.', 0, 'Bertrand Russel', 0, 1),
(43, 'Ecce Homo - Özə Qayıdış', 'img/product/1555765355567150138ecce-228x228.jpg', '6', 7, '11', 'Yaxın vaxtlarda insanlığın qarşısına indiyə qədər ona qarşı<br>yönəldilmiş ən qəliz iddia ilə çıxacağımı əsas tutaraq, əvvəlcə<br>kim olduğumu izah eləməyi zəruri hesab edirəm. Əslində<br>bunlar bilinməlidir; çünki “şəxsiyyətimi gizlətmirəm”, lakin<br>missiyamın böyüklüyü ilə müasirlərimin kiçikliyi arasındakı<br>tərs mütənasiblik oradan məlum olur ki, məni nə eşidirlər, nə<br>də görürlər. Mən öz kreditimlə yaşayıram, bəlkə də yaşadığım<br>şey mühakimədən ibarətdir. Özümü yaşamadığıma inandırmaq<br>üçün sadəcə yay aylarında Yuxarı Enqadinə (İsveçrədə<br>ərazi adı) gələn hər hansısa bir mütəfəkkirlə söhbət etməyim<br>kifayətdir. Bu şərtlər altında öhdəmə vərdişlərimi və instinktlərimin<br>qürurunu üsyana sürükləyən vəzifə düşür. Bunu demək<br>mənim borcumdur. Mənə qulaq asın. Çünki mən o və ya buyam.<br>İlk növbədə məni başqaları ilə səhv salmayın!', 0, 'Friedrich Nietzsche', 0, 1),
(44, 'Dərvişlərin Hekayətləri', 'img/product/1555765405371504435dervis_01-228x228.jpg', '6', 8, '13', 'Dərviş hekayətlərinin sırf əyləncəvi cazibəsinin böyüklüyünə baxmayaraq, onlar heç vaxt sadəcə folklor, nağıl və ya əfsanə kimi qavranılmayıb. Bu hekayətlər hazırcavablıq, nəfislik və konstruktiv kamillik baxımından hər hansı mədəniyyətin ən yaxşı hekayələri ilə müqayisə olunacaq səviyyədə olsalar da, onların sufi hekayətləri kimi təlim funksiyaları müasir dünyada çox az məlumdur. Zira, bu funksiyaları təsvir etmək üçün indi nə texniki, nə də populyar terminlər mövcud deyil.<br>\"Dərvişlərin hekayətləri\"ndə təqdim olunan materiallar min illərin ruhani təcrübəsini əks etdirir. Dərviş-ustadlar öz müridlərinə bu və ya digər ibrətamiz hekayətlərin köməyi ilə uzun əsrlər boyunca dərs keçiblər. Hekayətlərdə məqsəd müridin qavrayışını gücləndirmək idi ki, bunun nə olduğu da adi insanlar üçün bir sirr olaraq qalır.&nbsp;', 0, 'İdris Şah', 0, 1),
(45, 'Bütün Bunlar Nə Deməkdir?', 'img/product/1555765497559890148photo_2018-08-30_11-19-04-228x228.jpg', '6', 7, '21', 'Bu kitabda müzakirə edəcəyimiz doqquz fəlsəfi problem aşağıdakılardı: – Zehnimizdən kənardakı aləm barədə bilik; – Öz zehnimizdən savayı zehinlər barədə bilik; – Zehinlə beyin arasındakı əlaqə; – Dil necə mümkündür? – Azad iradəyə malik olub-olmamağımız; – Əxlaqın təməli; – Hansı bərabərsizlik ədalətsizdir? – Ölümün mahiyyəti; – Həyatın mənası.', 0, 'Tams Neygel', 0, 1),
(46, 'Aşma', 'img/product/15557655433529407921-ashma-agalar-memmedov-228x228.jpg', '6', 7, '25', '2012-ci ili Dalğa Gənclər Hərəkatı “Güney Azərbaycan ili” elan etdi. İl ərzində Güney Azərbaycanda yaşayan 30 milyon­dan çox Azərbaycan türkünün hüquqlarının müdafiəsi istiqamə­tin­də bir çox işlər görülür. Hərəkatımız öz Əsasnaməsində də bə­yan etdiyi kimi yalnız Güney Azərbaycan məsələsi ilə bağlı milli təəssübkeşlik fəaliyyətləri sərgiləməkdədir…', 0, 'Ağalar Məmmədov', 0, 1),
(47, 'Açıq ürək', 'img/product/15557656721490619039Dalay-Lama-sayt-300x400-228x228.jpg', '6', 5, '25', '<p>Qapalı ürəkdə mərhəmət duyğusunun doğulması müşkül bir məsələdir. Bəs qapalı ürəyin açılması üçün nə lazımdır? «Açıq ürək» bütün digər məsələlərlə münasibət göstərməklə yanaşı bu suala da cavab verir.</p><p>Dalay Lamanın şəxsiyyəti, onun uğrunda mübarizə apardığı ideallarla tam bir mütənasiblik təşkil edir. O, bütöv dünyanın canlı varlıqlarını əzabdan, məşəqqətdən qurtarmaq üçün öz həyatını qurban verməyə hazır olan bir inancın başında dayanan müqəddəs insandır. Onun müqəddəsliyi hər hansı qeyri-adi bir möcüzəyə dayanmır – Dalay Lamanın möcüzəsi, onun mərhəmət duyğusunun ən yüksək zirvəsini fəth etməsindədir.</p><p>Bu kitab nə qədər kobud səslənsə də, insanlara mərhəmətli olmağın üsullarını, texnikasını öyrədir. Sadə örnəklərlə buna necə nail olmağın yolları Dalay Lamanın öz dilindən qələmə alınmışdır. Bu müqəddəs adam bizə bunları söyləyir: «Ürəyinizi açın ki, başqaları da sizə öz ürəyini açıq saxlaya bilsin. Yalnız bu zaman mərhəmət duyğusu yarana bilər və biz bütün canlı varlıqlara qarşı ədalətli mövqe sərgiləyə bilərik».</p><p>Tərcüməçi: Fərhad Yalquzaq</p>', 0, 'Dalay Lama', 0, 1),
(48, 'Beynəlxalq Etiket', 'img/product/15557659181550821172WhatsApp Image 2018-03-29 at 11.06.13-228x228.jpeg', '7', 14, '24', 'Beynəlxalq etiket, Leyla Qasımova', 0, 'Leyla Qasımova', 0, 1),
(49, 'Babilin Ən Varlı Adamı', 'img/product/15557659581556536765babilvarli-228x228.png', '7', 4, '30', '<p>«Babilin ən varlı adamı» – bu kitab, pulla necə davranmağın üsulunu öyrənmək istəyən, lakin iqtisadiyyat ədəbiyyatını oxumağı sevməyənlər üçün yazılmışdır. Müəl­lif müvəffəqiyyət qazanmağa can atanlara öz maliyyə imkanlarını planlaşdırmağı, pul qazanmağı, bunlardan qənaətlə istifadə etməyi və yığılmış var-dövləti&nbsp; artırmağı öyrədir.</p><p>Düşünülə bilər ki, axı burada yeni nə var? Yenilik isə ondan ibarətdir ki, o bunu, bütün süjet xəttini Qədim Babil tarixindən keçirdərək edir. Belə ki, Qədim Babil bu gün də aktual qalan əsas maliyyə qanunlarının beşiyi sayılır. Onun qəhrəmanları isə babilli tacirlər, peşə sahibləri, «bankirlər» və qeyriləridir.</p><p>Kitab sadə dillə yazılıb və olduqca oxunaqlıdır. Bu çox maraqlı bestsellerdə ən təkəbbürlü məqsədlərə çatmağın sirləri, müvəffəqiyyət və zənginliyin açarı gizlidir. Məşhur «Babil əfsanələri» milyonlarla oxucuya uğur və sərvət axtarışına ruhlanmağa kömək edib.</p><p>Kitab iki səbəbdən diqqətinizi çəkəcək.</p><p>Birincisi – o maarifləndiricidir.</p><p>İkincisi – bu kitabın maraqlı süjet xətti onu mütaliə edəcəyiniz bir neçə gecənizi rəngləndirəcək.</p>', 0, 'Corc S. Kleyson', 0, 1),
(50, 'A-dan Z-dək Marketinq', 'img/product/1555766027318535516marketinq-228x228.jpg', '7', 7, '14', 'Marketinq sahəsində dünya şöhrətli mü­təxəssis Filip Kotlerin bu əsəri milyonlarla rəhbər və marketinq üzrə mütəxəssisin masaüstü kitabına çevrilib. Əsərdə şirkətlərin müasir şərtlər altında uğuru üçün əhəmiyyətli olan effektli marketinqin 80 konsepsiyası yığcam və anlaşıqlı formada verilib. Kitab marketinqin zamanın sınağından keçmiş klassik alətləriylə yanaşı, yalnız son illərdə tətbiq edilməyə başlayan yeni innovasiya işləmələri də əhatələyir.', 0, 'Filip Kotler', 0, 1),
(51, '8-13 Yaş: Uşağın ən çətin Dövrü', 'img/product/1555766072212537285sekkizonuc_01-228x228.png', '7', 5, '15', 'Yeniyetməlik dövrü valideynlər üçün ən çətin və gözlənilməz, onları bəzən hətta sarsıdan yaş dövrüdür. Hələ az əvvəl məmnuniyyətlə qucağınıza can atan, dizinizin üstündə oturan \"mələy\"inizin indi sizdən uzaqlaşıb özünə qapanmasına inanmaq həqiqətən də çətindir. Uşaq indi dünyanı başqa cür qavrayır. Siz məhz bu məqamda onun üçün arxa-dayağa çevrilməlisiniz. Məlum yaş çox mürəkkəb və uşaq üçün kifayət qədər mühüm dövrdür. Bu səbəbdən də sizin vəzifəniz yeniyetməyə kömək etmək, onun maraqlarının dəyişməsinə anlayışla yanaşmaq və ona sevginizi bəxş etməkdir.<br>Müəllif bu əsərdə hər bir valideyni maraqlandıran vacib suallara cavab verir. Kitab uşaqlarını düzgün tərbiyə etmək istəyən ata-analar üçün nəzərdə tutulub.', 0, 'Larisa Surkova', 0, 1),
(52, '5i Uğur Düsturu', 'img/product/1555766120107300478ugur_dusturu_01-228x228.jpg', '7', 6, '18', 'Gənc dost! Uğur qazanmaq istəyirsən, amma bunun yolunu, düsturunu bilmirsən? Əsla ruhdan düşmə, bu kitabı diqqətlə və sona qədər oxu! Bu zaman sən öz zəhmətinin bəhrəsini, şəxsi nailiyyətlərini tezliklə görə bilərsən. Əlbəttə, əgər “uğur düsturu” qaydalarına əməl etsən... Bu isə elə çətin deyil. Çalış əldə etdiyin biliklərlə kifayətlənməyəsən. Çünki onlar sənin daimi inkişafına hələ tam zəmanət vermir. İnkişafa meyilli ol, ən əsası isə qazandığın bilikləri tətbiq etməyi öyrən! Qəlbinlə danış! Özünü tanı və sev! Qarşına aydın məqsədlər qoy! Müsbət düşün! Pozitiv ol! Risk et! Onda görəcəksən ki, uğur qazanmaq doğrudan da çətin deyil..', 0, 'Arzu Qafarlı', 0, 1),
(53, 'Projeler İle C# 7.0 Ve Sql Server 2016', 'img/product/155582273313899362719713615601714-228x228.jpg', '13', 34, '14', '<div><span>Dünyanın en çok kullanılan programlarından C# ve SQL Server konuları, bu kitapta sizler için projeler ile özel olarak hazırlanmış ve kodlanmıştır. Her projenin kodları satır satır açıklanmıştır.&nbsp;<br><br>Konular anlatılırken aşırı detaylardan kaçınılmıştır. Kitabımızı, sade anlatımı, projeler ile ilgili bol örnekleri, resimlerle desteklenen açıklamaları ve özellikle kitabın yanında hediye olarak sunulan sesli görüntülü eğitim videoları sayesinde zevkle okuyup, yanınızdan ayıramayacaksınız.&nbsp;<br><br>Kodları özel olarak hazırlanmış bu Projeleri ticari amaçlarla kullanabilmek için kitabın tümünü dikkatli bir şekilde okuyup hazırlanmış projelerin eksiklerini tamamlamanız hedeflenmiştir.&nbsp;<br><br>Kitap hakkında bazı konu başlıkları;&nbsp;<br><br>C#&nbsp;<br>Recursive (Kendini Çağıran) Metotlar.&nbsp;<br>Metotlarda Out Parametresi (Dışarı Veri Göndermek).&nbsp;<br>Hicri Takvim Ve Datetime Class.&nbsp;<br>Bir Projede Dynamic Link Library Kullanmak (DLL).&nbsp;<br>Yaş Hesabı (Yıl, Ay, Gün Farkını Bulmak).&nbsp;<br>Ayın Son Gününü Bulmak.&nbsp;<br>WriteLineAsync (Dosyaya Asenkron Yazmak).&nbsp;<br>Excel Programı ve XML Görüntülemek.&nbsp;<br>TCMB Sitesinden, Otomatik Olarak Kurları Çekmek ve XML.&nbsp;<br>Haber Siteleri Ve RSS.&nbsp;<br>Thread İle Aynı Anda Birden Fazla İşlem Yapmak.&nbsp;<br>Object Oriented Programing (Nesne Yönelimli Programlama).&nbsp;<br>Auto Generated Property.&nbsp;<br>OOP Bisiklet Montaj.&nbsp;<br>OOP Araç Galerisi.&nbsp;<br>OOP Büfe Otomasyon.&nbsp;<br>Architecture Explorer İle Programınızın Mimari Yapısını Anlamak.&nbsp;<br>Class Library ve Inheritance.&nbsp;<br>Runtime (Çalışma Anında) Kontrol Oluşturmak.&nbsp;<br>Disk Klasör ve Dosya Listeleyici.&nbsp;<br>QRCode (Kare Kod).&nbsp;<br>Connected Mimari ve Data Reader.&nbsp;<br>Mars.&nbsp;<br>C# İle Sql Server Prosedürü Kullanmak.&nbsp;<br>Data Table Verilerinde Gezinti (DataBinding).&nbsp;<br>Entity, Facade, Tool Class Library.&nbsp;<br>DataGridView Kontrolünde Arama ve Class Library.&nbsp;<br>Connected, Disconected Mimari Yaklaşımlarıyla Projeler.&nbsp;<br>Ado.Net Entity Data Model Projesi.&nbsp;<br>Linq Ve Lambda Expression ile Proje Geliştirmek.&nbsp;<br>SelectedIndexChanged Hatası ve SelectionChangeCommitted.&nbsp;<br>DataGridView Satır Numaralandırma.&nbsp;<br>Entities, Linq Crud İşlemleri ve Empty Model.&nbsp;<br><br>SQL SERVER&nbsp;<br>Sql Server 2012 Kurulumundaki Önemli Noktalar.&nbsp;<br>Normalizasyon Kuralları.&nbsp;<br>Aggregate Functions (Toplam Fonksiyonları).&nbsp;<br>Language ve Dil Seçenekleri.&nbsp;<br>Sorgularda Join Mantığı.&nbsp;<br>Otomatik Sorgu Yazmak.&nbsp;<br>Veritabanı Tablolarını, Sütunlarını Listelemek.&nbsp;<br>Bir Sorguda, Farklı Veritabanlarında İşlem Yapmak.&nbsp;<br>Sorgularda Sıra Numarası Vermek.&nbsp;<br>Prevent Saving Changes (VT. Değişikliklerim Neden Kabul Edilmiyor?).&nbsp;<br>Bulk Insert (Bir Sogu Sonucunu, Tabloya Eklemek).&nbsp;<br>Truncate ve Identity Column Resetlemek.&nbsp;<br>Bir Tablodan, Sadece Tekrar Eden Verileri Silmek.&nbsp;<br>With SchemaBinding İle View Koruması.&nbsp;<br>Union All Operatörü İle Sorgu Sonuçlarını Birleştirmek.&nbsp;<br>Stored Procedure.&nbsp;<br>Sql 2012 Fonksiyonları.&nbsp;<br>İki Tarih Arasındaki Farkı Bulan Fonksiyon.&nbsp;<br>Ayın Son Gününü Döndüren Fonksiyon.&nbsp;<br>Trigger, After Trigger, Disable Trigger.&nbsp;<br>Koşullu Çalışan Trigger Ve Rollback.&nbsp;<br>Hatalı Update, Delete İşlemlerinden Korkmayın (Begin Transaction).&nbsp;<br>Açık Kalan Transacitons Ve Zararları.&nbsp;<br>Clustered Index.&nbsp;<br>Veritabanına Kimler Bağlı.&nbsp;<br>Bağlı Kullanıcıların Bağlantılarını Kesmek.&nbsp;<br>Backup Restore Sample, Script İle Backup&nbsp;</span></div><p>&nbsp;</p>', 0, 'Süleyman Uzunköprü', 0, 2),
(54, 'Piyano Metodu', 'img/product/15558227771063013670pıyano-228x228.jpg', '13', 9, '24', 'Bir çalgının öğrenilmesi söz konusu olunca üç öğe ile karşılaşılır. 1 - Öğrenci, 2 - Öğretmen, 3 - Metod.<br><br>Öğrencinin; yetenekli, istekli ve çalışkan, öğretmenin; yeterli ve sevecen, metodun; sıcak, sevimli ve amaca götürür olması durumunda başarıya ulaşmak mümkündür.<br><br>Çalgı öğretimde metodun önemi büyüktür. İyi bir metod. Öğrenci ve öğretmeni kendinde buluşturup kaynaştırabilmeli; çizilen çerçevede sağlıklı bir şekilde yol alınmasını sağlamalıdır.<br>Bu yaklaşım doğrultusunda çalışmalarımı başlattım. Bilinmeyene ulaşmak için, bilinenden yola çıkmanın gerekliliğini düşünürek, yerli ve yabancı kaynakları incelemek suretiyle bilenen, sevilen ve sevilebilecek parçaları çizdiğim çerçevede değerlendirdim. Fırsat eğitimini de göz önüne alarak bestecilere de yer verdim.<br><br>Bu yaklaşımım doğrultusunda çalışmalarımı başlattım. Bilinmeyene ulaşmak için, bilinenden yola çıkmanın gerekliliğini düşünerek, yerli ve yabancı kaynakları incelemek suretiyle bilinen, sevilen ve sevilebilecek parçaları çizdiğim çerçevede değerlendirdim. Fırsat eğitimini de göz önüne alarak bestecilere de yer verdim.', 0, 'Yalçın İman', 0, 2),
(55, 'Parasal İktisat - Kuram Ve Politika', 'img/product/15558228751778195414Parasal İktisat-228x228.jpg', '13', 29, '15', 'Bu kitabın temel amacı, gelişmekte olan bir ekonominin yapısal özelliklerinin de dikkate alınarak parasal iktisadın yazılmasıdır. Bu çerçevede, gelişmiş ülke ekonomileri için yazılan parasal iktisat kitaplarında ele alınan konuların yanı sıra, teoride yer almakla birlikte bu tür kitaplarda yer bulmayan, ya da çok az değinilen gelişmekte olan ülkelere özgü sorunlara ve bu sorunların teorik çerçevede dayattığı değişikliklere özel bir önem verilmektedir. Mali baskınlık, kamu borcu ve borç dinamiği, mali baskınlığın yarattığı risklerin faiz ve döviz kuruna etkileşim kanalları, varlık ve yükümlülük dolarizasyonu, sermaye hareketlerinin yönünde ani değişiklikler, politik devresel hareketler, finansal piyasaların yeterince derinleşmemesinin yarattığı sorunlar gibi konular bu yaklaşıma örnek olarak verilebilir. Kitabın bir diğer özelliği para politikası ve finansal sisteme ilişkin bölümlerinin ele alınış biçimidir. Bu konularda vurgu, Türkiye\'deki işleyiş biçimi üzerinedir. Bu çerçevede, Merkez Bankası bilançosundaki değişikliklerin nedenleri ve sonuçları, Merkez Bankası\'nın temel politika aracı olan kısa vadeli faizleri belirleme biçimi, Merkez Bankası\'nın operasyonlarını nasıl gerçekleştirdiği, Para Politikası Kurulu\'nun nasıl işlediği, finansal piyasalarla Merkez Bankası\'nın etkileşim kanalları, şirketler kesimi açısından ticari kredinin önemi, Hazine\'nin borçlanma ihalelerini gerçekleştirme biçimi gibi konular ele alınmaktadır. Finansal krizler ayrıntılı biçimde incelenmektedir. Bu krizlerin nedenleri ele alınmakta, bu nedenlerin nasıl ortadan kaldırılabileceği tartışılmaktadır. Kitabın bir diğer önemli özelliği, konuların ayrı ayrı işlenmesinden mümkün olduğu ölçüde kaçınılmasıdır. Konular büyük bir çoğunlukla diğer konularla ilişkili olarak ele alınmaktadır.', 0, 'Fatih Özatay', 0, 2),
(56, 'Müzik Atlası, Ulrich Michels', 'img/product/15558229391512965278muzik-atlasi-228x228.jpg', '13', 29, '26', 'İçinde müziğe dair her şeyi barındıran Müzik Atlası, müziğin kuramsal temellerine dair ayrıntılı bir bakış sunmaktadır. Öte yandan müzik tarihini, tarihöncesi çağların kadim anıtsal eserlerinden günümüzün elektronik ve eğlence müziğine varana dek ayrıntılı ve özlü bilgilerle gözler önüne serer.<br><br>Nota örnekleriyle, haritalarla, kronolojik cetveller ve müziğe dair başka birçok önemli bilgiyle dolup taşmaktadır. Metin sayfalarını destekleyen 250\'den fazla renkli sayfa müzikal yapıları daha belirgin ve anlaşılır kılarken öğrenmeyi de daha zevkli hale getirir.<br><br>Almanya\'nın en bilinen müzik kaynaklarından olan Müzik Atlası, Japonya\'dan İspanya\'ya, Danimarka\'dan Tayvan\'a dünyanın yirmiye yakın ülkesinde her yaştan müzikseverin ve müzisyenin başucu kitabıdır.<br>(Tanıtım Bülteninden)', 0, 'Gunter Vogel', 0, 2),
(57, 'Matematik Mathematics 2', 'img/product/15558229872198808209786058697768-228x228.jpg', '13', 26, '31', '', 0, '', 0, 2),
(58, 'Geometri', 'img/product/15558230237900811690001691521001-1-228x228.jpg', '13', 26, '15', '', 0, '', 0, 2),
(59, 'Enine Atalet Momentinin Statik Stabilite Hesabı', 'img/product/155582306520415154209786056333804-228x228.jpg', '13', 10, '19', '', 0, 'Bahar Özdemir', 0, 2),
(60, 'Dijital Pazarlama Temelleri', 'img/product/15558231187630647810001732967001-1-228x228.jpg', '13', 19, '24', '<p><strong>Doğru Stratejiyle Başarıyı Yakalayın</strong></p><p>Dijital pazarlama özellikle 2000 yılından sonra günümüzün en popüler mesleklerinden biri haline geldi. Marka ya da kişisel olarak içinde bulunduğumuz dijital hayatı kontrol etmek oldukça büyük bir avantaj olmaya başladı. Her meslek dalının artık bir dijital uzantısı var. Emlakçı, öğretmen, doktor ya da çilingir olsanız bile dijitalde var olarak işinize büyük katma değer sağlayabilirsiniz. Elinizdeki kitap bu katma değeri çıkartmak noktasında eşsiz bir rehber olacak.</p><p><strong>&nbsp;</strong></p><p><strong>İçindekiler</strong></p><p>Dijital Pazarlamaya Giriş</p><p>Dijital Pazarlamada Metrikler</p><p>Dijital Pazarlama Kanalları</p><p>Arama Motoru Optimizasyonu / (Seo) Nedir?</p><p>Arama Motoru Pazarlaması / (Sem) Ve Adwords</p><p>Yeniden Pazarlama / Remarketıng</p><p>E-Posta Pazarlaması</p><p>Sosyal Medya Reklamları</p><p>Affılıate</p><p>İçerik Pazarlaması</p><p>Görüntülü Reklamlar / Dısplay Advertısıng</p><p>Mobil Pazarlama</p><p>Ölçümleme Ve Raporlama</p>', 0, 'Emre Gökşin', 0, 2),
(61, 'Dijital Fotoğrafçılık', 'img/product/15558231811574916598dijital fotorafcilik-228x228.jpg', '13', 14, '26', 'Fotoğrafın sınırlarının olmaması, deklanşöre basan herkesin muhteşem fotoğraflar çekeceği anlamına gelmez. Dijital fotoğrafçılıkta bilgi ve teknikle birlikte, sanatsal bir görsel bakış açısına sahip olmak gerekir. Sanatsal bakış açısını kazanmak ve gözü eğitmek için de doğayı çok iyi gözlemlemek önemlidir. Fotoğraf makinesi ve kadraj; bu bakış açısını aktarmak için sadece bir araçtır. Tabi bu aracı da en iyi şekilde kullanıp en uygun çekim tekniklerini uygulamak, muhteşem fotoğrafların ortaya çıkmasına yardımcı olacaktır. Bu kitap; dijital fotoğraf makineleri ve fotoğraf tekniklerinden başlayarak, dijital fotoğrafçılığın karanlık odası Adobe Photoshop ve Lightroom gibi yazılımlarla birlikte, fotoğrafta kompozisyon kurmanızda yol gösteren bütün bilgilere yer veren nadir ve en güncel eserlerden biridir.', 0, 'Özge Mardi Bayar', 0, 2),
(62, 'İşletmelerde Yönetim Ve Organizasyon', 'img/product/1555823287521101423yonetim ve organizasyon-228x228.jpg', '14', 15, '40', 'Kesim 1: Yönetim Bilimi ile İlgili Genel Bilgiler&nbsp;<br>Bölüm 1: Yönetim Biliminin Doğuşu ve Tarihi Gelişimi&nbsp;<br>Kesim 2: Yönetim Fonksiyonları&nbsp;<br>Bölüm 2: Planlama Fonksiyonu&nbsp;<br>Bölüm 3: Örgütleme Fonksiyonu&nbsp;<br>Bölüm 4: Yürütme Fonksiyonu&nbsp;<br>Bölüm 5: Koordinasyon Fonksiyonu&nbsp;<br>Bölüm 6: Denetim Fonksiyonu<br>Bölüm 7: Karar Verme Fonksiyonu&nbsp;<br>Kesim 3: Yönetim Biliminin Güncel Konuları&nbsp;<br>Bölüm 8: Organizasyonlarda Çatışma, Çatışma Nedenleri ve Çatışmanın Yönetimi&nbsp;<br>Bölüm 9: Yalın Organizasyonu&nbsp;<br>Bölüm 10: Yönetim Bilimin Diğer Güncel Konuları', 0, ' Mümin Ertürk', 0, 2),
(63, 'İşletme Kitabı', 'img/product/155582333016360612760000000620208-1-228x228.jpg', '14', 39, '41', 'Başarılı bir marka nasıl yaratılabilir? Büyük bir iş lideri nasıl olunur? Neden bazı firmalar başarısız olurken, bazıları başarıya ulaşır? Tarih boyunca işletme guruları, iş ve ticaret dünyasını şekillendiren ve keskinleştiren fikirler ve çözümler sunmuştur.<br><br>İşletme Kitabı, anlaşılır dilde kaleme alınan açıklamalarıyla, teorileri karmaşıklıktan kurtaran şekilleriyle ve global Pazar hakkındaki düşüncelerimizi ters köşeye yatıran zekice görselleriyle işletme düşüncesini en iyi şekilde anlatır.<br><br>İster yeni işletme kuran bir girişimci, ister daha büyük resme bakan bir CEO, isterse de iş dünyasını anlamaya çalışan meraklı bir müşteri olun, bu kitapta size ilham verecek çok şey bulacaksınız.&nbsp;<br>(Tanıtım Bülteninden)<br><br><br><br><b>Sayfa Sayısı:&nbsp;</b>355<br><br><b>Baskı Yılı:&nbsp;</b>2016<br><br><b>Dili:&nbsp;</b>Türkçe<br><b>Yayınevi:&nbsp;</b>Alfa Yayıncılık', 0, '', 0, 2);
INSERT INTO `book` (`book_id`, `book_name`, `book_image`, `book_category`, `book_price`, `book_amount`, `book_about`, `book_active`, `book_author`, `book_new`, `book_menu`) VALUES
(64, 'Google\'da Çalışacak Kadar Akıllı Mısınız?', 'img/product/15558233963409633400000000612804-1-228x228.jpg', '14', 9, '42', '<p>William Poundstone Amerika\'nın en seçici şirketleri ile yapılacak iş görüşmelerinde başarıya ulaşmanın şifresini çözüyor.<br>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p><br><br>Bunlar Google\'da Çalışacak Kadar Akıllı mısınız? kitabında yer alan ve ilk bakışta cevaplanması imkansız gibi görünen sorulara verilmiş birkaç örnek. William Poundstone, hayalinizdeki işe girebilmeniz için kaleme aldığı bu 21. kılavuzunda günümüzün önde gelen şirketlerinin tarihçesi, sırları ve kullandıkları aldatıcı mülakat tekniklerini gözler önüne seriyor. Kitap günümüzde yapılan iş görüşmelerinde sıklıkla sorulan en zor sorulardan düzinelercesinin çözümüne kılavuzluk ediyor. Yaratıcı düşüncenin önemini, rakiplerinize fark atmanın yöntemlerini, Facebook sayfanızın sizin hakkında ne söylediğini ve çok daha fazlasını keşfedin. Google\'da Çalışacak Kadar Akıllı mısınız? günümüz iş piyasasında başarıya ulaşmanız için etkileyici, eğlendirici ve vazgeçilmez bir kılavuz.<br>(Tanıtım Bülteninden)</p><ul><li>Beş sent boyutuna küçültülüp blender\'a atılıyorsunuz. Blender\'ın bıçakları 60 saniye sonra hareket edecek. Ne yaparsınız?</li><li>Bir çizgi film karakteri olsaydınız, hangisi olurdunuz ve niçin?</li><li>Bir okul otobüsüne kaç golf topu sığar?</li><li>Arkadaşınızla bir pizzayı paylaşıyorsunuz. Payınıza mümkün olan en fazla miktarda pizza düşmesi için kaç adet eşit boyda pizza dilimi olması gerekir?</li><li>Başınızı nasıl tartarsınız?</li><li>Dünyada bir sene içinde kaç şişe şampuan üretilir?</li><li>Yağmur yağıyor ve aracınızı otoparkın en uzak köşesine park etmişsiniz. Hangisi daha kuru kalmanıza yol açar, koşmak mı yürümek mi? Peki ya şemsiyeniz varsa?</li><li>Adamın biri arabasını otele kadar ittirir ve servetini kaybeder. Ne olmuştur?</li><li>Suda mı daha hızlı yüzersiniz yoksa şurupta mı?</li></ul>', 0, 'William Poundstone', 0, 2),
(65, 'Finans Matematiği', 'img/product/15558234481653702606finans-matematigi4c40fdf755e2536553e6cbeda0dc34cc-228x228.jpg', '14', 12, '43', '<h1>Finans Matematiği</h1><p>Zehra Başkaya</p><div>&nbsp;</div><p><a target=\"_blank\" rel=\"nofollow\" href=\"https://kidega.com/yayinevi/ekin-basim-yayin-akademik-kultur-kitaplar-004221\">Ekin Basım Yayın - Akademik Kültür Kitaplar</a></p>', 0, 'Zehra Başkaya', 0, 2),
(66, 'Finans Matematiği', 'img/product/1555823492212728985finans-matematigi-nobelkitap_com_118521-228x228.jpg', '14', 16, '35', '<p>Bu kitap, Üniversitelerin Ekonomi, İşletme Bankacılık, Finans ve Aktüerya Bölümlerinde verilen Finans Matematiği dersleri için ders kitabı olarak hazırlanmıştır. Sermaye Piyasası Kurumu (SPK) Lisanslama sınavları ile Aktüerlik sınavlarına girecek adayların kullanabilecekleri bir kaynak kitap olacaktır. Kitapta yer alan konular basit bir dille yazılmış, çok sayıda örnek ile konuların anlaşılabilirliği sağlanmaya çalışılmıştır. Her bölümün sonunda verilen farklı alıştırmalar ile bilginin pekiştirilmesi sağlanmıştır.</p><p><span>Kitap altı bölümden oluşmaktadır. Birinci Bölüm\'de paranın zaman değeri, faiz problemleri ele alınarak, ayrıntılı olarak uygulamada ve akademik çalışmalarda karşılaşılan faiz ve iskonto türleri verilmiştir. Kitabın İkinci Bölümü\'nde kesin annüiteler konusu incelenmiştir. Üçüncü Bölüm\'de, faiz dönüşüm döneminden farklı sıklıkta yapılabilen, değişken ödemeli annüiteler ele alınmıştır. Kitabın Dördüncü Bölümü\'nde borç ödeme yöntemleri olan Amortisman ve Borç Ödeme Fonu yöntemleri ayrıntılı olarak incelenmiş ve aralarındaki ilişki ve farklılıklar üzerinde durulmuştur. Beşinci Bölüm\'de finansal piyasalarda yaygın olarak kullanılan yatırım araçları tanıtılmış ve bu ürünlerin değerlemesi incelenmiştir. Altıncı Bölüm\'de türev piyasaları ve türev ürünleri ayrıntılı olarak ele alınmış ve türev ürünlerin fiyatlandırılması için kullanılan modeller açıklanmıştır. Kitap, finans alanına ilgi duyan kişilere ve öğrencilere ders kitabı olarak faydalı olacaktır.<br>(Tanıtım Bülteninden)</span></p>', 0, 'Meral Sucu, Funda Kul', 0, 2),
(67, 'Ekonomi Kitabı', 'img/product/15558239881270858836ekonomi-228x228.jpg', '14', 39, '50', '<p><span>Resimlerle Destekli, Akılda Kalıcı, Tamamı Renkli Resimli Kuşe Ciltli...<br>Ekonomi resesyona girerse ne olur? Para nasıl işler? Neden vergi öderiz? Ekonomi nasıl çalıştığımızdan paramızı nelere harcadığımıza kadar hayatımızı her yönden etkiler. Büyük ekonomik fikirlerse dünyamızı şekillendirmeye her daim devam eder.<br>Ekonomi Kitabı, kolay ve anlaşılır anlatımı, ekonomi jargonunu basitleştiren özlü açıklamaları, karmaşık teorileri çözümleyen şemaları, ekonomiyi akıllara kazıyan alıntıları ve anlamamızı kolaylaştıran zekice çizimleriyle başucu kitabınız olacak.<br>İster başlangıç düzeyinde, ister konuya hevesli bir öğrenci, ister sorunlara uzaktan bakan bir ekonomi uzmanı olun, bu kitapta ilginizi çekecek pek çok şey bulacaksınız.<br>İçindekiler</span></p><ul><li>Alım satım başlasın MÖ 400-MS 1770</li><li>Akıl çağı 1770-1820</li><li>Endüstriyel ve ekonomik devrimler 1820-1929</li><li>Savaş ve ekonomik bunalımlar 1929-1945</li><li>Savaş sonrası ve ekonomi 1945-1970</li><li><span>Güncel Ekonomi 1970\'ten günümüze<br><br><br><br><b>Sayfa Sayısı:&nbsp;</b>353</span></li></ul>', 0, '', 0, 2),
(68, 'Bir Ekonomik Tetikçinin İtirafları 3', 'img/product/15558240861898870495ekonomik3-228x228.jpg', '14', 12, '36', '<p><span>Yıl 2008...<br><br>Dolar değer kaybetmeye başlıyor ve bu düşüş sürüyor. A.B.D.\'nin en büyük ithalat kalemi olan petrolün varil fiyatı 200 dolara kadar çıkıyor. \'Büyük Bunalım\'dan sonra en büyük finans krizi patlak veriyor; yatırım bankaları batmaya başlıyor, büyük şirketler zora düşüyor.<br><br>Gündemin en popüler sorusu: Kapitalizm çöküyor mu? Rusya, Çin, Hindistan, Avrupa ve Latin Amerika\'nın farklı yönelişlerle A.B.D.\'nin tek süper güç konumunu giderek daha ciddi şekilde tehdit etmesi akla başka soruları da getiriyor. Üçüncü Dünya ülkelerini bir sistem doğrultusunda modern zaman sömürgelerine dönüştüren, önceki yüzyılın başında Rus Devrimi\'ne bile destek olan, IMF/Dünya Bankası, CIA/CFR gibi mekanizmalarla her şeyi en ince ayrıntısına kadar planlayanlar nasıl oldu da bu krizin gelişini göremedi?<br><br>Elinizde tuttuğunuz kitap, varılan son noktaya uzanan yoldaki kilometre taşlarını teker teker açıklıyor:</span></p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p><br><br><span>Tüm bunları ve daha da fazlasını konulara bizzat dahil olmuş on üç uzmanın kaleminden okuyacaksınız.<br><br>Ve mızrak ucunu ekonomik tetikçilerin oluşturduğu sistemin dünyanın yoksul halklarına nelere mal olduğunu bir kez daha, üstelik kanıtlarıyla göreceksiniz.<br>(Tanıtım Bülteninden)<br><br><br>İnce Kapak:&nbsp;<br><br>Sayfa Sayısı:&nbsp;410<br><br>Baskı Yılı:&nbsp;2015</span></p><ul><li>Kongo\'daki savaşın aslında kime hizmet ettiğini, biz ucuz cep telefonu ve dizüstü bilgisayar kullanalım diye dört milyon insanın can verdiğini biliyor muydunuz?</li><li>A.B.D.\'nin Irak petrollerini bu kez çokuluslulara komik bedellerle teslim edemeyeceğinden, çünkü önünde ciddi engeller olduğundan haberiniz var mıydı?</li><li>Bono ve Bob Geldof, Angelina Jolie ve George Clooney gibi kimi starlar Paul Wolfowitz ve Tony Blair ile aynı sahnede ve mutlu yüz ifadeleriyle boy gösterdiğinde kutlanan şey neydi?</li><li>Dünya Bankası\'nın 100 milyar doları nerede kayboldu?</li><li>Yıkım ihraç etmek\' ne demektir?</li></ul>', 0, 'Steven Hiatt', 0, 2),
(69, 'Az Mı Gittik, Uz Mu Gittik?', 'img/product/15558241842082492788azmigit-228x228.jpg', '14', 19, '33', '<p>2012 yılında Yapı Kredi Yayınları’ndan çıkan Bana Yönetim Kurulunu Söyle, Sana Kim Olduğunu Söyleyeyim kitabıyla sivil toplum örgütlerinde gönüllü veya profesyonel olarak çalışanlara önemli bir kaynak sunan Erdal Yıldırım bu kez vakıfları odak noktasına alan eseriyle karşımızda.</p><p>Erdal Yıldırım’ın üçüncü sektörde yirmi beş yılı aşan deneyim ve birikiminin zenginleştirdiği bu kitap ülkemizde vakıfçılığın gelişimi, hayırseverlik, sivil toplum açısından dünyadaki yerimiz gibi konuları yetkin bir dille okuyucuya sunuyor.</p>', 0, 'Erdal Yıldırım', 0, 2),
(70, 'Araba Sevdası', 'img/product/1555824339219380615Araba-sevdası-228x228.jpg', '15', 5, '34', 'Malumdur ki bazı&nbsp;insan<a target=\"_blank\" rel=\"nofollow\">lar eğlencesiz yaşayamaz. Bendeniz gibi yaratılıştan yalnızlığı sevenler için ise okumak ve yazmaktan iyi eğlence olamaz.&nbsp;</a><br><br><a target=\"_blank\" rel=\"nofollow\">İyi bilirim ki içimizde bu tür uğraşları, mesela&nbsp;</a>satranç<a target=\"_blank\" rel=\"nofollow\">&nbsp;oynamaktan on kat abes, bahçe kazmaktan on kat faydasız sayanlar az değildir.&nbsp;</a><br><br><a target=\"_blank\" rel=\"nofollow\">İhtimal ki bu hüküm doğrudur.</a><br><a target=\"_blank\" rel=\"nofollow\">Ne fayda ki ben satrancı merak edemedim. Bahçe kazmaya ise mevsimin müsaadesi yok.</a><br><br>Klasik edebiyatımızın en önemli&nbsp;romanlar<a target=\"_blank\" rel=\"nofollow\">ından Araba Sevdası artık çizgilerle devam ediyor…Edebiyatın her halini sevenler için</a>', 0, 'R.M.Ekrem', 0, 2),
(71, 'Amerika', 'img/product/1555824395178108536945893-228x228.jpg', '15', 12, '23', '<p>Arka Kapak Yazısı (Tanıtım Bülteninden)</p><p>&nbsp;</p><p>Amerika, Karl Rossmann\'ın başına gelen bir talihsizlik sonucunda Avrupa\'yı terk etmesiyle başlar. Amerika\'ya giden Rossman, başta şansı yaver gitse de, roman boyunca talihsizliklerden kurtulamaz. Gülünç durumlar yaşansa da özünde bir “ne yapacağını bilememe hali” Karl\'ı gittiği her yerde adım adım takip eder.&nbsp;Amerika, henüz on altı yaşında, iyimser ve tedirgin Karl\'ın kendi yolunu çizme mücadelesidir.</p><p>Kafka\'nın Amerika\'yı hiç görmeden kaleme aldığı bu roman, onun eserleri arasında, belki de en iyimser ve umutlu olanıdır. Metinlerinde genelde kapalı mekân tercih eden Kafka\'nın,&nbsp;Amerika&nbsp;romanında daha çok açık mekânlar metne hâkimdir. Fakat bu durum, hem başkahramanımız hem de okurlar için “özgürlüğün kıstırılmışlığı” diyebileceğimiz bir biçim alacaktır.</p>', 0, 'Franz Kafka', 0, 2),
(72, 'Alacakaranlık', 'img/product/15558244571794629219Kitap_1234683-228x228.jpg', '15', 9, '16', 'Bir insanoğlu vampir ile insanın aşkını yaşamadan böyle tasvir edemez ...İmkansız!!! Hatta hatta bir aşk böyle güzel tasvir edilebilir mi?<br><br>Bu konuda Stephenie Meyer \'i tekrar tekrar kutlamak lazım .<br><br>Ben ilk kitabı okuyalı uzun zaman oldu hala kelimeler kulaklarımda geziniyor ,cümleler yüreğimi bir hoş ediyor , paragraflar yanağıma öyle güzel bir gülümseme yüklüyor ki ...<br>Gerçekten bir başkasının aşkını dinlemek insana bu kadar güzel gelebilir mi ? İş yazar da bitiyor..Aşkı okutmuyor,iliklerine kadar hissettiriyor.<br><br>Gerçekten böyle bir aşk var mı diye düşünüyorsun ,&nbsp;<br>Gerçekten böyle bir aşkı yaşamak seçilmişlere kısmet olur diyorsun.<br><br>İnsanın İnsanla ,&nbsp;<br>İnsanın Vampirle ,&nbsp;<br>hiç farketmez ama böyle aşkı hissetmek ,bu kadar çarpılmak ,<br><br>AŞK\'ın hem lezzet hem de acısının ulaşılmazlığını bu kadar iyi anlatabilmek Stephenie Meyer\'e görev olmuş .<br><br>Son söz ; Bu kitabı okuyup sıkıldım diyecek hiçbir adam tanımıyorum ben ; Hayatında ilk kez bir roman alıp okuyacak birine verin kitabı 1 hafta da bitirmezse bir daha ne kitap alsın ne de okusun...', 0, 'S.Meyer', 0, 2),
(73, 'Al Midilli', 'img/product/15558245001323832140al-midilli-228x228.jpg', '15', 8, '22', 'Gündelik yaşamın çelişkilerini, sıradan insanlarının acı ve sevinçlerini, umudu ve ayakta kalma mücadelesini gözlem yeteneğiyle birleştiren, anlatısındaki küçük ayrıntılarla okuru derinden yakalamayı başararak dünya edebiyatında özel bir yer edinen John Steinbeck, bu kez Jody\'ye odaklanıyor.<br><br>Doğanın kâh çetin kâh teskin edici koşulları, Salinas Vadisi\'nin engin topraklarındaki mütevazı bir çiftlik evinde yaşayan insanların birbirleriyle ilişkilerini de belirlemektedir kuşkusuz. Otoriter babasının sürpriz bir biçimde hediye ettiği al midilli de Jody için yeni bir dünyanın kapılarını açar. Steinbeck, Jody\'nin beklenti ve hayalkırıklığı, sorumluluk ve kaygı, sabır ve hüsran gibi yetişkinler dünyasının alışıldık halleriyle ilk karşılaşmalarını doğa ve hayvan sevgisiyle bütünleşmiş bir biçimde resmederek hüzünlü ve bir o kadar gerçek bir anlatı çıkarıyor ortaya. Yaşanan toplumsal kırılmaların sesi ise her satırda kendini hissettiriyor…<br>(Tanıtım Bülteninden)', 0, 'John Steinbeck', 0, 2),
(74, 'Akşam Güneşi', 'img/product/155582455411319278370000000053717-1-228x228.jpg', '15', 12, '11', 'Onu ilk defa bir haziran günü Sazlı Pınar yolunda gördüm. Viran bir köprünün başında köylülerle konuşuyordu.<br>Yanında dizgini boynuna bırakılmış bir kula at vardı. Yanından geçerken selam verdik. Jandarma arkadaşım:<br>- Keyifler iyidir inşallah Bey, dedi.<br>- Çok şükür çavuş... Sen de iyisin ya?<br>Biraz önümden giden ihtiyar jandarma, köprünün öte başında atını durdurdu, beni bekledi. Eski bir çizme gibi sert ve kırışıklarla dolu yüzünde memnun bir gülümseme vardı:<br>- Şu adamı gördün mü Doktor Bey, dedi. Hani Cenabı Hak, Kitabında Hazret-i Peygamber\'in son peygamber olduğunu yazmasaydı ben, bu adama peygamber derdim.', 0, 'Reşat Nuri Güntekin', 0, 2),
(75, 'Ahlaksız Teklif', 'img/product/15558245991576602483Ahlaksiz Teklif-228x228.jpg', '15', 9, '13', 'BİR KIZ ON İKİ ERKEĞE SOYUNUN DERSE, AHLAKSIUZ TEKLİFTE Mİ BULUNMUŞ OLUR, YOKSA MASUM BİR RİCA MIDIR BU?<br>Emma Treymayne fiyakalı halkla ilişkilerci pozisyonunun bırakıp Lake Districkt\'e taşındı. Biraz huzur ve sükunet, tek istediği buydu! Çıplak bir erkekle dağlarda oynaşmak aklından geçmemişti… Emma yerel dağcılık kurtarma ekibine yardım etmeyi kabul edip yeni merkezleri için para toplamak adına \'zevkli\' bir çıplak takvim hazırlamayı önerdiğinde, toplumsal bir hizmette bulunduğunu düşünüyordu. Lakin, söz konusu toplum Emma\'nın yaptığı işleri umursamıyordu. Yakışıklı Temmuz Erkeği Will ise Emma\'nın niyetini tamamen yanlış anlamıştı. Şimdi Emma onu \'Ayın Erkeği\'nden fazlası olduğuna nasıl ikna edecekti?', 0, 'Phillipa Ashley', 0, 2),
(76, 'Agatha\'nın Anahtarı', 'img/product/15558246561446558055ahmet-ümit-agathanınanahtarı-228x228.jpg', '15', 7, '16', 'Ahmet Ümit, Türkiye\'de iyi polisiye roman yazılacağını kanıtlayan genç bir yazarımız. Sis ve Gece, Kar Kokusu, adlı romanlarıyla iyi polisiyenin iyi edebiyat olduğunu göstererek büyük ilgi toplayan yazarımızın bu kez de polisiye öykülerini sunuyoruz. \'Agatha\'nın Anahtarı\'ndaki öyküler, günümüz Türkiye\'sinde geçiyor. Polisiye romanın ustalarından Agatha Christie\'nin Türkiye\'ye geldiğinde kaldığı Pera Palas\'tan gecekondulara, yayınevlerinden emniyet müdürlüğüne kadar uzanan geniş bir mekan içerisinde ülkemizin cinayet yelpazesini sunuyor. Ülkemizde işlenen suçlardan yola çıkarak toplumsal psikolojimiz hakkında sorular soruyor. Suçla, insan arasındaki ilişkiyi farklı bir yoldan anlatıyor. Sağlam bir matematik yapısına, sıkı bir kurguya sahip olan öyküler yalın ve akıcı bir dille sunuluyor. Eğlenceli, düşündürücü, irkiltici, hepsinden önemlisi edebiyat tadı, edebiyat keyfi veren, meraklıları kadar polisiyeye ilgi duymayanları da etkileyecek bir kitap.&nbsp;', 0, 'Ahmet Ümit', 0, 2),
(77, '4N1K', 'img/product/15558247667257424190000000665959-1-228x228.jpg', '15', 26, '14', 'Yaprak; küçükken, markette annesinden sürpriz yumurta istediği için bulgur reyonuna sıkıştırılıp çimdiklenenler, ilkokul önlüğünün altına eşofman giyip okula gidenler, yeşil silgisini diş izi yapanlar ve kırmızı kapaklı tüm dersler kitabının saman sayfalarını silerken yırtanlar kadar sıradan bir kız çocuğuyken; birlikte büyüdüğü dört çılgın erkek arkadaşı yüzünden akranlarından biraz farklı bir kız haline gelmiştir. Dünyası, on iki yıllık dostları, gamzeli kahramanı Ali, tek ideolojisi3P (pizza, pijama, pislik) üzerine kurulu bir çılgın, Oğuz, sevgilisini kendi vesikalık resminden bile kıskanan demirli, Gökhan ve notları toplamda bile 100’e ulaşamayan çorap fetişisti tatlı çapkın Sinan’dan ibarettir. Kalbi dördüyle tıka basa dolu, hayatı onlarla rengârenk olduğu için aşka ne inancı vardır ne de ihtiyacı... Ama bir gün rutin (!) hayatı, doğum gününde gelen bir paket ile tümden değişir. Paketin içinde, gizemli bir âşıktan gelen, kızımızın asla giymeyeceği türden gösterişli bir elbise ve içinde de bir not vardır.', 0, 'Büşra Yılmaz', 0, 2),
(78, '300\'ler Komitesi', 'img/product/155582483020943601460000000622641-1-228x228.jpg', '15', 15, '1', '', 0, 'John Coleman', 0, 2),
(79, '12 Yıllık Esaret', 'img/product/155582491816526490040000000587457-1-228x228.jpg', '15', 11, '21', '1841\'de New York\'ta yaşayan Solomon Northup, kendisini müziğe adamış siyahi bir adamdır. Ailesiyle birlikte yaşayan Solomon, özgür yaşayan ve istediği şeyleri yapabildiği için mutlu bir adamdır. Fakat bir gün bir müzik işi için 2 adam ile tanışır ve çalışmak için Washington\'a gider.&nbsp;<br><br>İnandığı medeni dünya alt üst olur çünkü kendisini kaçırıp Güney\'de bir çiftlikte köle olarak çalışması için satarlar. Özgürlüğünü korumak için verdiği tüm emekler ve mücadele yerle bir olmuş, hayatı kabusa dönmüştür. Bu cehennemde Solomon acıyı, şiddeti, küçük düşürülmeyi yeniden öğrenecek ve isyan etmeye cesareti olmayan bir grup insanın umutsuzluğuna şahit olacaktır. Sevdiklerini ve hayatını geri almak için ne yapması gerektiğini kesinlikle bulmuştur... Aynı isimle filme de aktarılan 12 Yıllık Esaret bir nefeste okunacak bir şaheser.<br>(Tanıtım Bülteninden)', 0, 'Solomon Northup', 0, 2),
(80, '451° по Фаренгейту', 'img/product/15560009401824185803451pomini-228x228.jpg', '25', 7, '26', '451° по Фаренгейту - температура, при которой воспламеняется и горит бумага. Философская антиутопия Брэдбери рисует беспросветную картину развития постиндустриального общества: это мир будущего, в котором все письменные издания безжалостно уничтожаются специальным отрядом пожарных, а хранение книг преследуется по закону, интерактивное телевидение успешно служит всеобщему оболваниванию, карательная психиатрия решительно разбирается с редкими инакомыслящими, а на охоту за неисправимыми диссидентами выходит электрический пес...', 0, 'Рэй Дуглас Брэдбери', 0, 4),
(81, '1984', 'img/product/15560010276413962771011499468-228x228.jpg', '26', 7, '7', 'Своеобразный антипод второй великой антиутопии XX века — \"О дивный новый мир\" Олдоса Хаксли. Что, в сущности, страшнее: доведенное до абсурда \"общество потребления\" — или доведенное до абсолюта \"общество идеи\"?&nbsp;По Оруэллу, нет и не может быть ничего ужаснее тотальной несвободы...', 0, 'Джордж Оруэлл', 0, 4),
(82, 'Анна Каренина', 'img/product/15560010786748162800_6788ba5cf82361a90c9985182134e7dd_1360470417-228x228.jpg', '25', 7, '3', '\"Анну Каренину\" Толстой называл \"романом широким и свободным\". В основе этого определения - пушкинский термин \"свободный роман\". Не фабульная завершенность положений, а творческая концепция определяет выбор материала и открывает простор для развития сюжетных линий. Роман \"широкого дыхания\" привлекал Толстого тем, что в \"просторную, вместительную раму\" без напряжения входило все то новое, необычайное и нужное, что он хотел сказать людям.', 0, 'Лев Толстой', 0, 4),
(83, 'Овод', 'img/product/15560011419860333781011499468-228x228.jpg', '25', 7, '15', 'Артур Бертон - молод, полон свободолюбивых идей и роман­тических иллюзий. Пережив предательство товарищей и любимой женщины - потеряв все, он исчезает, чтобы вернуться совсем иным, с чужим именем и внешностью. Но под маской возмужав­шего, насмешливого и едкого Овода - все тот же порывистый Ар­тур, по-прежнему верный прекрасным идеалам своей юности. Романтика национально-освободительной борьбы, трагедия великой, страстной и несчастной любви, увлекательный сюжет с захватывающей интригой и необычайно многогранный и обая­тельный образ главного героя, - все это позволило роману ОВОД стать неподвластным времени.', 0, 'Этель Войнич', 0, 4),
(84, 'Все ради любви', 'img/product/1556001198350734518b4db75727979f5b69dc8b3181abb329e-228x228.jpg', '26', 8, '15', 'Многие годы бесплодных попыток завести ребенка разрушили отношения между любящими супругами. Потеряв всякую надежду обрести полноценную семью, Энджи Малоун решает вернуться в родной город и заняться семейным ресторанным бизнесом. Новые заботы помогли ей воспрянуть духом, а случайная встреча на парковке с девушкой-подростком Лорен дала шанс реализовать давнюю мечту — подарить кому-то материнскую любовь. Родную мать девушки совершенно не волнуют проблемы дочери, и когда той понадобилась помощь, Энджи Малоун оказалась единственным человеком, способным прийти ей на выручку...', 0, 'Кристин Ханна', 0, 4);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `category_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category_name`, `menu_id`) VALUES
(1, 'Bioqrafiya', 1),
(2, 'Bukinist', 1),
(3, 'Bədii Ədəbiyyat', 1),
(4, 'Digər', 1),
(5, 'Dünyagörüşü', 1),
(6, 'Fəlsəfə', 1),
(7, 'Fərdi Inkişaf', 1),
(8, 'Hüquq Ədəbiyyatı', 1),
(9, 'Memarlıq', 1),
(10, 'Mətbəx Aləmi', 1),
(11, 'Uşaq Ədəbiyyatı', 1),
(12, 'Tarix', 1),
(13, 'Ders Kitapları', 2),
(14, 'Ekonomi', 2),
(15, 'Hikaye', 2),
(16, 'Bilgisayar', 2),
(17, 'Bilim-Mühendislik', 2),
(18, 'Advanture', 3),
(19, 'Horror', 3),
(20, 'Novel', 3),
(21, 'Education', 3),
(22, 'Aвтобиография', 4),
(23, 'Диета', 4),
(24, 'Комиксы', 4),
(25, 'Любви', 4),
(26, 'Классика', 4),
(27, 'Сказка за сказкой', 4),
(28, 'Komikslər', 6),
(29, 'Oynaya-oynaya öyrənək', 6),
(30, ' Məktəbli Çantaları', 5),
(31, 'Исторический', 4);

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `menu_id` int(11) NOT NULL,
  `menu_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`menu_id`, `menu_name`) VALUES
(1, 'Azərbaycanca'),
(2, 'Türk dilində'),
(3, 'İngilis dilində '),
(4, 'Rus dilində'),
(5, 'Məktəbli çantalar'),
(6, 'Digər');

-- --------------------------------------------------------

--
-- Table structure for table `migration_versions`
--

CREATE TABLE `migration_versions` (
  `version` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `executed_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migration_versions`
--

INSERT INTO `migration_versions` (`version`, `executed_at`) VALUES
('20190406073301', '2019-04-06 07:33:51'),
('20190406094826', '2019-04-06 09:48:37'),
('20190406095312', '2019-04-06 09:53:21'),
('20190410093049', '2019-04-10 09:31:04'),
('20190410093334', '2019-04-10 09:33:45'),
('20190411093418', '2019-04-11 09:34:30'),
('20190413102557', '2019-04-13 10:26:10'),
('20190414103454', '2019-04-14 10:35:06'),
('20190415115726', '2019-04-15 11:57:44'),
('20190420081321', '2019-04-20 08:20:51'),
('20190420092529', '2019-04-20 09:25:41'),
('20190420112507', '2019-04-20 11:25:17'),
('20190421122723', '2019-04-21 12:27:34'),
('20190422112227', '2019-04-22 11:22:38'),
('20190424061321', '2019-04-24 06:13:42');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `slider_id` int(11) NOT NULL,
  `slider_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slider_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slider_active` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`slider_id`, `slider_name`, `slider_image`, `slider_active`) VALUES
(8, 'Slider1', 'img/slider/15553134791789292095408355.jpg', 0),
(9, 'Slider2', 'img/slider/1555314177470539799books_library_old_111388_1920x1080.jpg', 0),
(10, 'Slide3', 'img/slider/155531351437892773326102.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_second_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_password` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_address` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_street` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_post` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_country` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_city` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_security_information` int(11) NOT NULL DEFAULT '0',
  `user_security_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'NO'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `user_second_name`, `user_email`, `user_password`, `user_address`, `user_street`, `user_post`, `user_country`, `user_city`, `user_security_information`, `user_security_password`) VALUES
(3, 'Elvin', 'Elesgerov', 'elvin@mado.az', 'fcea920f7412b5da7be0cf42b8c93759', 'Zabrat', 'Tramvay', 'AZ1000', 'Azerbaycan', 'Baki', 0, 'NO'),
(4, 'Akif', 'Nagiyev', 'akif@gmail.com', 'c33367701511b4f6020ec61ded352059', 'Bulbule Qes', 'Habil Ali Kuc', 'AZ1515', 'Azerbaycan', 'Baki', 1, 'NO'),
(5, 'Musviq', 'Elibalayev', 'musviq@mado.az', 'e10adc3949ba59abbe56e057f20f883e', '3MK', 'Ali Kuc', 'AZ8989', 'Azerbaycan', 'Mingecevir', 0, 'NO');

-- --------------------------------------------------------

--
-- Table structure for table `wish_list`
--

CREATE TABLE `wish_list` (
  `id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wish_list`
--

INSERT INTO `wish_list` (`id`, `book_id`, `user_id`) VALUES
(1, 84, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menu_id`);

--
-- Indexes for table `migration_versions`
--
ALTER TABLE `migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`slider_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `wish_list`
--
ALTER TABLE `wish_list`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `slider_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wish_list`
--
ALTER TABLE `wish_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
