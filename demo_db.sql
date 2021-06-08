-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 08, 2021 lúc 11:18 AM
-- Phiên bản máy phục vụ: 10.4.19-MariaDB
-- Phiên bản PHP: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `demo_db`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(21, '2014_10_12_000000_create_users_table', 1),
(22, '2014_10_12_100000_create_password_resets_table', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(24, '2021_06_08_050809_create_tbl_posts', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_posts`
--

CREATE TABLE `tbl_posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_add` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_posts`
--

INSERT INTO `tbl_posts` (`id`, `title`, `subject`, `image`, `sub_content`, `category_title`, `content`, `date_add`) VALUES
(1, 'Một chiến sĩ công an mắc Covid-19 suy hô hấp nặng', 'https://vnexpress.net/mot-chien-si-cong-an-mac-covid-19-suy-ho-hap-nang-4290862.html', 'https://i1-suckhoe.vnecdn.net/2021/06/08/be-nh-vie-n-be-nh-nhie-t-do-i-2303-5316-1623130075.jpg?w=680&h=408&q=100&dpr=1&fit=crop&s=JlXi3YOhAqwMOTIJKX3HrQ', '\"Bệnh nhân 8944\", công an phường Phú Trung, quận Tân Phú, suy hô hấp nặng, sẽ được chuyển từ bệnh viện Bệnh Nhiệt đới sang Chợ Rẫy để can thiệp ECMO.', 'Xã hội', 'Tiến sĩ, bác sĩ Nguyễn Văn Vĩnh Châu, Giám đốc Bệnh viện Bệnh Nhiệt đới TP HCM, cho biết bệnh nhân sinh năm 1980, được chuyển đến viện Nhiệt đới ngày 6/6 do suy hô hấp, điều trị ở khoa Hồi sức Tích cực Chống độc Người lớn.\r\n\r\nCác bác sĩ áp dụng phác đồ hồi sức, thở máy xâm lấn, bệnh nhân diễn tiến tổn thương phổi tiến triển. Theo bác sĩ Châu, hiện nhiều bệnh nhân Covid-19 nặng, bệnh viện đang điều trị ba ca phải can thiệp ECMO, 17 ca viêm phổi nặng cần thở máy, lọc máu. Sở Y tế TP HCM và bệnh viện hội chẩn cùng Bệnh viện Chợ Rẫy, thống nhất phương án đưa bệnh nhân này sang Chợ Rẫy để can thiệp ECMO kịp thời khi có chỉ định.\r\n\r\n\"Ê kíp bác sĩ hồi sức của hai bệnh viện đang phối hợp để bảo đảm chuyển bệnh nhân an toàn nhất\", bác sĩ Châu nói. Dự kiến, bệnh nhân sẽ được chuyển sang Chợ Rẫy chiều nay.\r\n\r\nTheo Trung tâm Kiểm soát Bệnh tật TP HCM (HCDC), \"bệnh nhân 8944\", công an phường Phú Trung, quận Tân Phú, trực tại chốt Bệnh viện quận Tân Phú trong 4 ngày từ 28 đến 31/5. Anh được lấy mẫu ngày 1/6, kết quả xét nghiệm âm tính với nCoV.\r\n\r\nTừ ngày 1 đến 4/6, anh trực ở chốt 128b Kênh Tân Hóa. Từ ngày 2/6, anh mệt, đến 4/6 có sốt cao và ngày 5/6 mệt nhiều, khó thở, hôm sau đến bệnh viện khám bệnh. Bệnh nhân được phân luồng, chuyển phòng cách ly tạm và được xét nghiệm sàng lọc cho kết quả dương tính nCoV. Người vợ đi cùng cũng được lấy mẫu xét nghiệm, kết quả dương tính, được Bộ Y tế ghi nhận \"bệnh nhân 8945\".', '2021-06-08 15:15:25'),
(2, '3.000 m2 cần sa bị phát hiện ở bãi giữa sông Hồng', 'https://vnexpress.net/3-000-m2-can-sa-bi-phat-hien-o-bai-giua-song-hong-4290910.html', 'https://i1-vnexpress.vnecdn.net/2021/06/08/ca-nsa-jpeg-1885-1623132141.jpg?w=680&h=0&q=100&dpr=1&fit=crop&s=34aIj4DB5RlWO-aKY_x4qA', 'Ngày 8/6, Công an quận Long Biên cho biết đã lập biên bản sự việc. Người đàn ông nước ngoài hiện tạm trú và làm việc tại một công ty ở huyện Yên Bình, tỉnh Yên Bái. Người đàn ông 55 tuổi, quốc tịch Pháp, bị xác định thuê 3.000 m2 đất tại bãi giữa sông Hồn', 'An ninh', 'Ngày 8/6, Công an quận Long Biên cho biết đã lập biên bản sự việc. Người đàn ông nước ngoài hiện tạm trú và làm việc tại một công ty ở huyện Yên Bình, tỉnh Yên Bái.\r\nSố cây cần sa tại hiện trường. Ảnh: Công an cung cấp.\r\n\r\nSố cây cần sa tại hiện trường. Ảnh: Công an cung cấp.\r\n\r\nTrước đó, khoảng 11h30 ngày 5/6, Công an quận Long Biên phối hợp cùng các đơn vị nghiệp vụ kiểm tra khu vực bãi giữa sông Hồng thuộc địa bàn phường Ngọc Thuỵ đã phát hiện người nước ngoài đã trồng hơn 100 cây cần sa và tàng trữ trái phép cần sa khô. Tại diện tích 3.000 m2 đất tại bãi giữa do vợ chồng ông thuê để xâm canh, hàng trăm cây cần tra tươi đang trong giai đoạn phát triển.\r\n\r\nNhà chức trách đã thu 115 cây cần sa tươi với trọng lượng 34 kg và 40,268 gam cần sa khô. Cảnh sát làm rõ động cơ trồng số cần sa này.', '2021-06-08 15:15:25'),
(3, 'Indonesia không hưởng quả phạt góc nào trước Việt Nam', 'https://vnexpress.net/indonesia-khong-huong-qua-phat-goc-nao-truoc-viet-nam-4290900.html', 'https://i1-vnexpress.vnecdn.net/2021/06/08/pha-t-go-c-jpeg-1623134611-162-8499-1997-1623134662.jpg?w=680&h=0&q=100&dpr=1&fit=crop&s=aSyCoyCVTuwEx4WgSPaYlA', 'Bên cạnh tỷ số 4-0, thế trận áp đảo của Việt Nam trước Indonesia còn thể hiện qua số phạt góc cũng như dứt điểm, trong trận đấu thuộc vòng loại World Cup 2022 tối 7/6.', 'Thể thao', 'Trong hiệp một, Việt Nam dồn ép và hưởng tới 10 quả phạt góc. Nhiều lần Quang Hải đá phạt góc thẳng ra tuyến hai cho Tuấn Anh hoặc cầu thủ vào thay người Xuân Trường sút xa. Nguy hiểm nhất là cú sút của Tuấn Anh ngay phút thứ 6, bóng đi căng nhưng trúng vị trí thủ môn Nadeo Argawinata.\r\n\r\nSang hiệp hai, Việt Nam tạo ra thêm năm quả phạt góc. Trong đó, quả phạt góc cuối cùng dẫn tới bàn của Công Phượng phút 67. Xuân Trường sút phạt về cột gần cho Tiến Linh chạy cắt mặt đánh đầu ngược vào trong. Công Phượng bị bất ngờ khi bóng bay đến nhưng vẫn kịp dùng đùi trái đẩy bóng vào lưới cận thành, nâng tỷ số lên 3-0. Kể từ đó, Việt Nam đá giữ sức và không tạo ra thêm phạt góc.\r\n\r\nIndonesia không được đá phạt góc lần nào trong cả trận. Họ cũng không sút được lần nào trong hiệp một. Sang hiệp hai, Indonesia sút bốn lần, trong đó một pha bị thủ môn Tấn Trường bắt gọn, và một pha trúng xà ngang. Còn Việt Nam dứt điểm 13 lần, ghi bốn bàn.\r\n\r\nTỷ lệ kiểm soát bóng cũng nghiêng hẳn về Việt Nam, lên tới 71% thời gian. Indonesia chỉ hơn Việt Nam về số pha phạm lỗi (16 so với 10) và số thẻ vàng (5 so với 2).\r\n\r\nViệt Nam không ghi bàn trong hiệp một, nhưng thắng 4-0 nhờ bốn bàn của Tiến Linh, Quang Hải, Công Phượng và Văn Thanh trong hiệp hai. Thầy trò Park Hang-seo giữ đỉnh bảng G với 14 điểm, hơn UAE hai điểm. Ở loạt trận áp chót tối 11/6, Việt Nam gặp Malaysia, còn Indonesia đụng UAE.', '2021-06-08 15:22:22'),
(4, 'Hệ thống nhiều công ty chứng khoán \'sập\'', 'https://vnexpress.net/he-thong-nhieu-cong-ty-chung-khoan-sap-4290922.html', 'https://i1-kinhdoanh.vnecdn.net/2021/06/08/A-nh-chu-p-Ma-n-hi-nh-2021-06-2137-6368-1623133131.png?w=680&h=0&q=100&dpr=1&fit=crop&s=OUcyiBaQEsVl-w3Zk68ocg', 'Sắc đỏ tiếp tục là gam màu chủ đạo trong phiên sáng nay (8/6). Lực bán chiếm ưu thế từ khi mở cửa, nối tiếp phiên giảm hôm qua khiến VN-Index lùi về dưới tham chiếu sau ATO. Lực cầu đỡ lại ở vùng thấp giúp thị trường hồi phục vào giữa phiên sáng nhưng khô', 'Chứng khoán', 'Hệ thống giao dịch của các công ty chứng khoán và HoSE hôm nay phát sinh nhiều vấn đề khiến nhà đầu tư mất kiên nhẫn, làm lực bán tăng vọt.\r\n\r\nSắc đỏ tiếp tục là gam màu chủ đạo trong phiên sáng nay (8/6). Lực bán chiếm ưu thế từ khi mở cửa, nối tiếp phiên giảm hôm qua khiến VN-Index lùi về dưới tham chiếu sau ATO. Lực cầu đỡ lại ở vùng thấp giúp thị trường hồi phục vào giữa phiên sáng nhưng không đủ để đảo chiều xu hướng. Áp lực bán tiếp tục gia tăng sau đó ép chỉ số giảm sâu.\r\n\r\nSáng nay, hệ thống giao dịch tiếp tục là một vấn đề lớn ảnh hưởng tới tâm lý nhà đầu tư. Hệ thống một số công ty chứng khoán bị gián đoạn, phải dừng hoạt động để sửa lỗi vào giữa phiên sáng, như trường hợp của FPTS hay TVSI. Trong khi đó, việc gửi lệnh tới HoSE tại những thành viên thị trường tiếp tục gặp tình trạng chậm phản hồi, khó khăn trong việc nhập lệnh.\r\n\r\nBảng giá các công ty chứng khoán cũng không phản ánh chính xác giao dịch của cổ phiếu, khi mức giá khớp lệnh sai lệch so với các lệnh mua bán hiển thị. Đồ thị phiên sáng nay không phản ánh xu hướng chính xác của thị trường, thay vào đó là những đường đi ngang, gấp khúc.', '2021-06-08 15:35:47'),
(5, 'Quận huyện TP HCM lo khu cách ly quá tải', 'https://vnexpress.net/quan-huyen-tp-hcm-lo-khu-cach-ly-qua-tai-4290575.html', 'https://i1-vnexpress.vnecdn.net/2021/06/08/cachlytphcm-3003-1623136430.jpg?w=680&h=0&q=100&dpr=1&fit=crop&s=fNKdFjjjzXLwLEHW_7fB1A', 'Số ca nhiễm liên tục tăng làm phát sinh nhiều ca F1 khiến các quận huyện tại TP HCM lo ngại khu cách ly tập trung bị quá tải trong những ngày tới.', 'Thời sự', 'Số ca nhiễm liên tục tăng làm phát sinh nhiều ca F1 khiến các quận huyện tại TP HCM lo ngại khu cách ly tập trung bị quá tải trong những ngày tới.\r\n\r\nSau khi ổ dịch liên quan điểm nhóm Hội thánh truyền giáo Phục hưng được phát hiện, quận Gò Vấp là địa phương tại TP HCM ghi nhận nhiều ca Covid-19 trong đợt bùng phát dịch này, với hơn 93 ca khiến các F1 (phải cách ly tập trung) cũng tăng theo. Hiện, khu cách ly tập trung ở quận có dấu hiệu quá tải khi có 120 giường nhưng đang phục vụ cách ly khoảng 113 ca F1.\r\nTheo bác sĩ Nguyễn Trung Hoà, Giám đốc trung tâm y tế quận Gò Vấp, quận tiếp tục đẩy mạnh tầm soát trong đó tập trung những nơi nguy cơ cao, xét nghiệm lần 2 ở những khu phong toả, cách ly nên thời gian tới có thể ca F1 còn tăng lên. Trung tâm y tế đã lập thêm khu cách ly 80 giường đặt ở Trung tâm bồi dưỡng chính trị quận Gò Vấp nhưng về lâu dài cần phải nâng thêm công suất.', '2021-06-08 15:37:07'),
(6, 'Tiền vệ Tuấn Anh: \'Tôi không thể chạy tiếp nên xin ra\'', 'https://vnexpress.net/tien-ve-tuan-anh-toi-khong-the-chay-tiep-nen-xin-ra-4290876.html', 'https://i1-vnexpress.vnecdn.net/2021/06/08/a1-4702-1623127570.jpg?w=680&h=0&q=100&dpr=1&fit=crop&s=h0CoHcs4G6Ly93Bw2qNoyg', 'Nguyễn Tuấn Anh khó góp mặt ở trận Malaysia, sau khi chấn thương cổ chân và phải rời sân trong hiệp một trận thắng Indonesia ở vòng loại World Cup 2022 tối 7/6.', 'Thể thao', '\"Tôi bị đau cổ chân sau tình huống va chạm với Pratama Arhan Alif. Không thể chạy tiếp nên tôi xin ra sân\", Nguyễn Tuấn Anh chia sẻ sau trận đấu trên sân Al-Maktoum. \"Bây giờ chưa biết thế nào. Đành chấp nhận thôi. Tới đâu hay tới đó\".\r\n\r\nPhút 23, Tuấn Anh bị Alif đạp bằng gầm giày trong pha tranh chấp 50-50 ở giữa sân. Tiền vệ của Việt Nam bay khỏi mặt đất, trước khi đổ gục xuống sân và ôm chân. Cố gắng đứng dậy và thi đấu thêm một lúc, Tuấn Anh vẫn cảm thấy đau, bước đi tập tễnh. Khi HLV Park Hang-seo hỏi có thể tiếp tục thi đấu không, anh liền ra dấu xin thay người. Lương Xuân Trường được tung vào thay thế, trong khi Tuấn Anh rời sân với khuôn mặt buồn bã.\r\n\r\nHôm nay Tuấn Anh sẽ đi viện, để đánh giá chính xác mức độ tổn thương ở cổ chân. Nhiều khả năng anh sẽ không thể thi đấu khi Việt Nam đối đầu Malaysia ngày 11/6.\r\n\r\nTuấn Anh được đánh giá là tiền vệ tài năng bậc nhất của bóng đá Việt Nam hiện tại. Ông bầu Đoàn Nguyên Đức thậm chí công khai khen ngợi anh là cầu thủ hay nhất lứa I Học viện HAGL Arsenal JMG, đứng trên Công Phượng hay Xuân Trường. Tiền vệ quê Thái Bình từng được HLV Arsene Wenger giới thiệu sang CLB Olympikos của Hy Lạp thử việc năm 2012 nhưng lỡ cơ hội vì chấn thương.\r\n\r\nSáu năm qua, Tuấn Anh chịu tổng cộng 12 ca chấn thương nặng, nhiều lần phải lên bàn mổ. Có giai đoạn bi quan, tiền vệ người Thái Bình nói với gia đình rằng: \"Cho con chữa nốt lần này, nếu không được sẽ nghỉ bóng đá, tìm nghề khác\".\r\n\r\nSau trận đấu giữa Việt Nam và Indonesia, trong đường hầm Pratama Arhan Alif đã đến và chắp tay xin lỗi Tuấn Anh cùng các cầu thủ Việt Nam.', '2021-06-08 15:38:57'),
(7, 'Sáng kiến túi đá giảm nhiệt, quạt làm mát khi mặc đồ bảo hộ chống dịch', 'https://vnexpress.net/sang-kien-tui-da-giam-nhiet-quat-lam-mat-khi-mac-do-bao-ho-chong-dich-4288878.html', 'https://i1-suckhoe.vnecdn.net/2021/06/04/z2525911769916-afc38a2799e8f34-6993-5499-1622774930.jpg?w=680&h=0&q=100&dpr=1&fit=crop&s=KsvwQo96AD8KVeZbV0GVlA', 'Đội y tế Hải Dương chi viện Bắc Giang lấy mẫu xét nghiệm diện rộng người dân, có sáng kiến đeo túi đá lạnh chườm trên người để làm mát, tránh kiệt sức trong thời tiết nắng nóng.', 'Xã hội', 'Thạc sĩ Ngụy Đình Hoàn, Trưởng đoàn chi viện Trường Đại học kỹ thuật Y tế Hải Dương tại Bắc Giang, cho biết những ngày này thời tiết nơi đây rất khắc nghiệt. Nhiệt độ ngoài trời thường xuyên lên đến 39, 40 độ C, nắng nóng kéo dài suốt từ sáng sớm tới chiều muộn. Đêm vẫn rất oi bức, không có gió. Phải mặc bộ đồ phòng hộ cấp 4 kín mít suốt 5- 6 tiếng đồng hồ, thậm chí dài hơn, là điều rất khó khăn với đội y tế lấy mẫu xét nghiệm. Bởi vậy, anh nghĩ ra sáng kiến sử dụng túi đá lạnh chườm liên tục, trong cả ban ngày và ban đêm, khi hết mát sẽ thay bằng túi khác.\r\n\r\nToàn bộ nguyên liệu đều có sẵn hoặc rất dễ kiếm. Đá lạnh xin từ người dân, được buộc chặt trong túi zip, sau đó dùng dây đeo chéo qua người. Khi nóng bức, có thể lấy túi đá di chuyển khắp các vị trí trên cơ thể giúp giảm nhiệt. Trong suốt thời gian các đội thực hiện lấy mẫu, tổ hậu cần sẽ chuẩn bị những túi này, đi đến từng địa điểm để phân phát.\r\n\r\n\"Những túi đá này giúp cơ thể mát hơn, hiệu quả làm việc tốt hơn, là cứu cánh trong những ngày nhiệt độ cao đỉnh điểm\", anh Hoàn nói. Ý tưởng này được thạc sĩ Hoàn nảy ra, sau đó chia sẻ cho các học trò, hướng dẫn lại cho nhiều đội lấy mẫu khác.', '2021-06-08 15:40:06'),
(8, 'Đề thi chuyên Anh có dấu hiệu bất thường', 'https://vnexpress.net/de-thi-chuyen-anh-co-dau-hieu-bat-thuong-4290863.html', 'https://i1-vnexpress.vnecdn.net/2021/06/08/Section-3-cua-bai-doc-hieu-6303-1623132725.jpg?w=680&h=0&q=100&dpr=1&fit=crop&s=D_72KSJM7eAEc_c48HTVCQ', 'Hai đoạn đọc hiểu trong đề thi chuyên Anh vào lớp 10 trường THPT chuyên Lê Khiết bị cho là trùng với đề ôn tập của giáo viên trong tổ ra đề.', 'Giáo dục', 'Ba ngày sau khi thi môn tiếng Anh (chiều 5/6), nhiều học sinh và phụ huynh cho rằng hai đoạn trong phần đọc hiểu trùng với bài một số học sinh khác đã ôn tập từ lớp dạy thêm của cô giáo thuộc tổ làm đề.\r\n\r\nCụ thể section 1 giống với đề học sinh đã ôn, chỉ khác là đề ôn tập yêu cầu học sinh điền từ vào 15 chỗ trống, còn đề thi chuyên Anh yêu cầu điền từ vào 10 chỗ trống. Section 3 trùng hoàn toàn với đề ôn tập từ nội dung lẫn thứ tự câu hỏi.\r\n\r\nHai phần Section 1 và Section 3 của phần đọc hiểu trong đề thi vào chuyên Anh có đến 20 câu hỏi và chiếm 2/10 điểm. Điểm môn chuyên được nhân đôi nên nhiều thí sinh phản ứng. \"Các bạn làm bài xong khoe trúng tủ của cô giáo dạy thêm rồi chia sẻ hình ảnh đề đã ôn luyện\", một học sinh cho biết.', '2021-06-08 15:41:46'),
(9, 'Đôi bạn biến rác thải thành gạch lát đường', 'https://vnexpress.net/doi-ban-bien-rac-thai-thanh-gach-lat-duong-4290694.html', 'https://i1-vnexpress.vnecdn.net/2021/06/08/gachlatduongtunhuabodiJPG-1623-6831-4561-1623123240.jpg?w=680&h=408&q=100&dpr=1&fit=crop&s=8_z67EEvIK8rLPw3GUKIjg', 'Hai doanh nhân trẻ ở Jakarta tìm ra cách biến túi nylon và bao bì sản phẩm thành gạch lát đường Rebrick giúp giảm ô nhiễm rác thải nhựa.', 'Khoa học', 'Sau hai năm hiện thực hóa ý tưởng tái chế rác thải nhựa thành gạch lát đường thân thiện với môi trường, đôi bạn thân Novita Tan và Ovy Sabrina (34 tuổi) đã ra mắt công ty tái chế Rebrick, trong bối cảnh Indonesia trở thành quốc gia xả rác thải nhựa xuống biến lớn thứ hai thế giới sau Trung Quốc, với hy vọng có thể góp phần giúp đất nước 270 triệu dân này đạt mục tiêu giảm 75% rác thải nhựa trong vòng 4 năm tới.\r\n\r\nCặp đôi bắt đầu bằng việc ghé thăm các quầy hàng thực phẩm trên khắp thủ đô Jakarta để tìm kiếm những gói cà phê hòa tan bỏ đi, bao bì mì gói và túi nylon. Nhờ chiến dịch truyền thông xã hội hiệu quả, họ nhanh chóng nhận được hàng đống bao bì nhựa phế thải từ các nhà tài trợ trên cả nước.\r\n\r\n\"Nó cho thấy người Indonesia có ý thức mạnh mẽ trong việc tái chế rác thải nhựa nhưng họ không biết phải làm điều đó ở đâu và như thế nào\", Sabrina chia sẻ.', '2021-06-08 15:43:39'),
(10, 'Nga điều khiển thiết giáp bằng điện thoại di động', 'https://vnexpress.net/nga-dieu-khien-thiet-giap-bang-dien-thoai-di-dong-4290860.html', 'https://i1-vnexpress.vnecdn.net/2021/06/08/556318717570a-Bumerang-8026-1623127475.jpg?w=680&h=0&q=100&dpr=1&fit=crop&s=y7Jof5cfmgjZlYvtpvXEig', 'Hãng VPK phát triển phần mềm trên điện thoại di động để điều khiển và theo dõi các tham số trên xe Bumerang, dòng thiết giáp mạnh nhất của Nga.', 'Quân sự', '\"Chúng tôi bây giờ có thể điều khiển thiết giáp Bumerang ngay cả bằng điện thoại di động. Phần mềm có thể giúp thiết giáp tiến lùi, xoay tháp pháo và điều chỉnh nòng pháo. Chúng tôi cũng có thể theo dõi lượng nhiên liệu và nhiệt độ dầu máy trên xe\", Aleksandr Krasovitsky, giám đốc điều hành công ty Công nghiệp Quân sự (VPK), nói trên kênh RBC ngày 7/6.\r\n\r\nKrasovitsky khẳng định xe chiến đấu lội nước VPK-7829 Bumerang là thiết giáp mạnh nhất tại Nga hiện nay. \"Kỹ thuật này có thể được áp dụng trên các phương tiện dân sự, nhất là với các hệ thống điều khiển tự động\", Krasovitsky nói.', '2021-06-08 15:44:22');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `tbl_posts`
--
ALTER TABLE `tbl_posts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `tbl_posts`
--
ALTER TABLE `tbl_posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
