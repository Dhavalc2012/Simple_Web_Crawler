-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 14, 2015 at 04:42 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `crawl`
--

CREATE TABLE IF NOT EXISTS `crawl` (
  `link` varchar(300) NOT NULL,
  `Meta` varchar(300) NOT NULL,
  PRIMARY KEY (`link`),
  UNIQUE KEY `Meta` (`Meta`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crawl`
--

INSERT INTO `crawl` (`link`, `Meta`) VALUES
('http://www.google.com', '5519641b8b3fe'),
('http://www.facebook.com', '551973cee3ca9'),
('http://www.stupidsid.com', '551973e4b23c4'),
('http://uidai.gov.in', '551973f0dfc6b'),
('http://infomonsta.com', '561e50ec7b8e7'),
('http://google.com', '561e51000b6ff');

-- --------------------------------------------------------

--
-- Table structure for table `crawled`
--

CREATE TABLE IF NOT EXISTS `crawled` (
  `Crawled` varchar(500) NOT NULL,
  `Meta` varchar(300) NOT NULL,
  PRIMARY KEY (`Crawled`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crawled`
--

INSERT INTO `crawled` (`Crawled`, `Meta`) VALUES
('http://2glux.com/projects/jumi', '551973e4b23c4'),
('http://google.com', '561e51000b6ff'),
('http://google.com/advanced_search', '561e51000b6ff'),
('http://google.com/chrome/browser/', '561e51000b6ff'),
('http://google.com/intl/en/about.html', '561e51000b6ff'),
('http://google.com/intl/en/ads/', '561e51000b6ff'),
('http://google.com/intl/en/policies/privacy/', '561e51000b6ff'),
('http://google.com/intl/en/policies/terms/', '561e51000b6ff'),
('http://google.com/language_tools', '561e51000b6ff'),
('http://google.com/preferences', '561e51000b6ff'),
('http://infomonsta.com', '561e50ec7b8e7'),
('http://infomonsta.combookdemo.php', '561e50ec7b8e7'),
('http://infomonsta.comcompany.php', '561e50ec7b8e7'),
('http://infomonsta.comindex.php', '561e50ec7b8e7'),
('http://infomonsta.commyinfomonsta.php', '561e50ec7b8e7'),
('http://infomonsta.compoa.php', '561e50ec7b8e7'),
('http://infomonsta.comproduct.php', '561e50ec7b8e7'),
('http://infomonsta.comservice.php', '561e50ec7b8e7'),
('http://infomonsta.comteam.php', '561e50ec7b8e7'),
('http://infomonsta.comwhat_do_we_do.php', '561e50ec7b8e7'),
('http://infomonsta.net/SurveyMonsta/', '561e50ec7b8e7'),
('http://infomonsta.net/SurveyMonsta/registerUserPage.do', '561e50ec7b8e7'),
('http://l.facebook.com/l.php', '551973cee3ca9'),
('http://maps.google.co.in/maps', '5519641b8b3fe'),
('http://mygov.in', '551973f0dfc6b'),
('http://news.google.co.in/nwshp', '5519641b8b3fe'),
('http://resident.uidai.net.in', '551973f0dfc6b'),
('http://translate.google.co.in/', '5519641b8b3fe'),
('http://uidai.gov.in', '551973f0dfc6b'),
('http://uidai.gov.in/', '551973f0dfc6b'),
('http://uidai.gov.in/../images/news/corrigendum_4_23122014.pdf', '551973f0dfc6b'),
('http://uidai.gov.in/../images/news/corrigendum_5.pdf', '551973f0dfc6b'),
('http://uidai.gov.in/../images/news/empanelment_of_ssp.pdf', '551973f0dfc6b'),
('http://uidai.gov.in/../images/news/press_release_10_crore_aadhaar_bank_account_linkage_15122014.pdf', '551973f0dfc6b'),
('http://uidai.gov.in/../images/news/press_release_from_uidai_7_crore_aadhaars_generated_in_up_2.5_crore_in_bihar_06012015.pdf', '551973f0dfc6b'),
('http://uidai.gov.in/../images/news/press_release_from_uidai_aadhaar_generation_crosses_2_crore_in_bihar.pdf', '551973f0dfc6b'),
('http://uidai.gov.in/../images/news/press_release_from_uidai_aadhaar_generation_crosses_6_crore_in_up.pdf', '551973f0dfc6b'),
('http://uidai.gov.in/../images/news/Press_Release_UIDAI_issues_70_crore_Aadhaar_numbers.pdf', '551973f0dfc6b'),
('http://uidai.gov.in/../images/news/request_for_information_05022015.pdf', '551973f0dfc6b'),
('http://uidai.gov.in/../images/news/seeding_19032015.pdf', '551973f0dfc6b'),
('http://uidai.gov.in/aapka-aadhaar.html', '551973f0dfc6b'),
('http://uidai.gov.in/about-uidai.html', '551973f0dfc6b'),
('http://uidai.gov.in/auth.html', '551973f0dfc6b'),
('http://uidai.gov.in/contactus.html', '551973f0dfc6b'),
('http://uidai.gov.in/disclaimer.html', '551973f0dfc6b'),
('http://uidai.gov.in/external-links.html', '551973f0dfc6b'),
('http://uidai.gov.in/faq.html', '551973f0dfc6b'),
('http://uidai.gov.in/fi-e-kyc.html', '551973f0dfc6b'),
('http://uidai.gov.in/library/references.html', '551973f0dfc6b'),
('http://uidai.gov.in/news-media-center.html', '551973f0dfc6b'),
('http://uidai.gov.in/privacy-policy.html', '551973f0dfc6b'),
('http://uidai.gov.in/quick-links-en.html', '551973f0dfc6b'),
('http://uidai.gov.in/quick-links-en/others-en.html', '551973f0dfc6b'),
('http://uidai.gov.in/quick-links-en/partner-en.html', '551973f0dfc6b'),
('http://uidai.gov.in/quick-links-en/registrar-en.html', '551973f0dfc6b'),
('http://uidai.gov.in/quick-links-en/resident-en.html', '551973f0dfc6b'),
('http://uidai.gov.in/quick-links-en/student-en.html', '551973f0dfc6b'),
('http://uidai.gov.in/resource-center.html', '551973f0dfc6b'),
('http://uidai.gov.in/rti-en.html', '551973f0dfc6b'),
('http://uidai.gov.in/screen-reader.html', '551973f0dfc6b'),
('http://uidai.gov.in/sitemap.html', '551973f0dfc6b'),
('http://uidai.gov.in/terms-of-use.html', '551973f0dfc6b'),
('http://uidai.gov.in/uid-tenders.html', '551973f0dfc6b'),
('http://uidai.gov.in/updates.html', '551973f0dfc6b'),
('http://uidai.gov.in/vacancies-uidai.html', '551973f0dfc6b'),
('http://uidai.gov.in/workshop-presentation.html', '551973f0dfc6b'),
('http://vinaora.com/', '551973f0dfc6b'),
('http://www.blogger.com/', '5519641b8b3fe'),
('http://www.facebook.com', '551973cee3ca9'),
('http://www.facebook.com/badges/', '551973cee3ca9'),
('http://www.facebook.com/campaign/landing.php', '551973cee3ca9'),
('http://www.facebook.com/careers/', '551973cee3ca9'),
('http://www.facebook.com/directory/pages/', '551973cee3ca9'),
('http://www.facebook.com/directory/people/', '551973cee3ca9'),
('http://www.facebook.com/directory/places/', '551973cee3ca9'),
('http://www.facebook.com/facebook', '551973cee3ca9'),
('http://www.facebook.com/find-friends', '551973cee3ca9'),
('http://www.facebook.com/games/', '551973cee3ca9'),
('http://www.facebook.com/help/', '551973cee3ca9'),
('http://www.facebook.com/help/cookies/', '551973cee3ca9'),
('http://www.facebook.com/login/', '551973cee3ca9'),
('http://www.facebook.com/mobile', '551973cee3ca9'),
('http://www.facebook.com/mobile/', '551973cee3ca9'),
('http://www.facebook.com/pages/create/', '551973cee3ca9'),
('http://www.facebook.com/places/', '551973cee3ca9'),
('http://www.facebook.com/policies/', '551973cee3ca9'),
('http://www.facebook.com/privacy/explanation', '551973cee3ca9'),
('http://www.facebook.com/r.php', '551973cee3ca9'),
('http://www.google.co.in/history/optout', '5519641b8b3fe'),
('http://www.google.co.in/imghp', '5519641b8b3fe'),
('http://www.google.co.in/intl/en/options/', '5519641b8b3fe'),
('http://www.google.co.in/preferences', '5519641b8b3fe'),
('http://www.google.co.in/services/', '5519641b8b3fe'),
('http://www.google.co.in/setprefdomain', '5519641b8b3fe'),
('http://www.google.co.in/setprefs', '5519641b8b3fe'),
('http://www.google.com', '5519641b8b3fe'),
('http://www.google.com/advanced_search', '5519641b8b3fe'),
('http://www.google.com/chrome/index.html', '5519641b8b3fe'),
('http://www.google.com/intl/en/about.html', '5519641b8b3fe'),
('http://www.google.com/intl/en/ads/', '5519641b8b3fe'),
('http://www.google.com/intl/en/policies/privacy/', '5519641b8b3fe'),
('http://www.google.com/intl/en/policies/terms/', '5519641b8b3fe'),
('http://www.google.com/language_tools', '5519641b8b3fe'),
('http://www.google.com/preferences', '5519641b8b3fe'),
('http://www.orkut.com/Main', '5519641b8b3fe'),
('http://www.stupidsid.com', '551973e4b23c4'),
('http://www.stupidsid.com/', '551973e4b23c4'),
('http://www.stupidsid.com/about', '551973e4b23c4'),
('http://www.stupidsid.com/account', '551973e4b23c4'),
('http://www.stupidsid.com/advertise', '551973e4b23c4'),
('http://www.stupidsid.com/campussid', '551973e4b23c4'),
('http://www.stupidsid.com/component/kunena/', '551973e4b23c4'),
('http://www.stupidsid.com/contact', '551973e4b23c4'),
('http://www.stupidsid.com/disclaimer', '551973e4b23c4'),
('http://www.stupidsid.com/index.php', '551973e4b23c4'),
('http://www.stupidsid.com/index.php/engineering-viva-questions', '551973e4b23c4'),
('http://www.stupidsid.com/index.php/forum/me-mtech-in-india', '551973e4b23c4'),
('http://www.stupidsid.com/jobs', '551973e4b23c4'),
('http://www.stupidsid.com/knowledge-hub', '551973e4b23c4'),
('http://www.stupidsid.com/knowledge-hub/engineering', '551973e4b23c4'),
('http://www.stupidsid.com/knowledge-hub/engineering/admissions', '551973e4b23c4'),
('http://www.stupidsid.com/knowledge-hub/engineering/college-comparer', '551973e4b23c4'),
('http://www.stupidsid.com/knowledge-hub/engineering/college-finder', '551973e4b23c4'),
('http://www.stupidsid.com/knowledge-hub/engineering/college-reviews', '551973e4b23c4'),
('http://www.stupidsid.com/knowledge-hub/engineering/course-descriptions', '551973e4b23c4'),
('http://www.stupidsid.com/knowledge-hub/engineering/cutoffs', '551973e4b23c4'),
('http://www.stupidsid.com/knowledge-hub/engineering/discussions', '551973e4b23c4'),
('http://www.stupidsid.com/knowledge-hub/engineering/news', '551973e4b23c4'),
('http://www.stupidsid.com/knowledge-hub/engineering/popular-books', '551973e4b23c4'),
('http://www.stupidsid.com/knowledge-hub/engineering/student-articles', '551973e4b23c4'),
('http://www.stupidsid.com/knowledge-hub/engineering/tuitions', '551973e4b23c4'),
('http://www.stupidsid.com/knowledge-hub/m-e-m-tech', '551973e4b23c4'),
('http://www.stupidsid.com/knowledge-hub/m-e-m-tech/admission-process', '551973e4b23c4'),
('http://www.stupidsid.com/knowledge-hub/m-e-m-tech/all-about-gate', '551973e4b23c4'),
('http://www.stupidsid.com/knowledge-hub/m-e-m-tech/college-reviews', '551973e4b23c4'),
('http://www.stupidsid.com/knowledge-hub/m-e-m-tech/course-descriptions-and-specialisations', '551973e4b23c4'),
('http://www.stupidsid.com/knowledge-hub/m-e-m-tech/discussions', '551973e4b23c4'),
('http://www.stupidsid.com/knowledge-hub/m-e-m-tech/gate-coaching', '551973e4b23c4'),
('http://www.stupidsid.com/knowledge-hub/m-e-m-tech/gate-question-papers', '551973e4b23c4'),
('http://www.stupidsid.com/knowledge-hub/m-e-m-tech/psu-accepting-gate-scores', '551973e4b23c4'),
('http://www.stupidsid.com/knowledge-hub/mba', '551973e4b23c4'),
('http://www.stupidsid.com/knowledge-hub/mba/b-school-reviews', '551973e4b23c4'),
('http://www.stupidsid.com/knowledge-hub/mba/introduction', '551973e4b23c4'),
('http://www.stupidsid.com/knowledge-hub/mba/mba-entrance-coaching-classes', '551973e4b23c4'),
('http://www.stupidsid.com/knowledge-hub/mba/news', '551973e4b23c4'),
('http://www.stupidsid.com/knowledge-hub/mba/preparations', '551973e4b23c4'),
('http://www.stupidsid.com/knowledge-hub/mba/selection-criteria-a-cutoffs', '551973e4b23c4'),
('http://www.stupidsid.com/knowledge-hub/mba/students-profiles', '551973e4b23c4'),
('http://www.stupidsid.com/knowledge-hub/ms-in-us', '551973e4b23c4'),
('http://www.stupidsid.com/knowledge-hub/ms-in-us/all-about-gmat', '551973e4b23c4'),
('http://www.stupidsid.com/knowledge-hub/ms-in-us/all-about-gre', '551973e4b23c4'),
('http://www.stupidsid.com/knowledge-hub/ms-in-us/all-about-toefl', '551973e4b23c4'),
('http://www.stupidsid.com/knowledge-hub/ms-in-us/applying-for-us-visa', '551973e4b23c4'),
('http://www.stupidsid.com/knowledge-hub/ms-in-us/applying-to-us-universities', '551973e4b23c4'),
('http://www.stupidsid.com/knowledge-hub/ms-in-us/courses-and-university-reviews', '551973e4b23c4'),
('http://www.stupidsid.com/knowledge-hub/ms-in-us/discussions', '551973e4b23c4'),
('http://www.stupidsid.com/knowledge-hub/ms-in-us/grad-school-finder', '551973e4b23c4'),
('http://www.stupidsid.com/knowledge-hub/ms-in-us/gre-tutors-a-ms-counsellors', '551973e4b23c4'),
('http://www.stupidsid.com/knowledge-hub/ms-in-us/ms-in-us-articles', '551973e4b23c4'),
('http://www.stupidsid.com/knowledge-hub/ms-in-us/ms-in-us-articles/latest', '551973e4b23c4'),
('http://www.stupidsid.com/knowledge-hub/ms-in-us/seminars-events', '551973e4b23c4'),
('http://www.stupidsid.com/knowledge-hub/ms-in-us/students-profiles', '551973e4b23c4'),
('http://www.stupidsid.com/knowledge-hub/ms-in-us/total-expenditure-ms-in-us', '551973e4b23c4'),
('http://www.stupidsid.com/knowledge-hub/ms-in-us/university-comparer', '551973e4b23c4'),
('http://www.stupidsid.com/knowledge-hub/placements', '551973e4b23c4'),
('http://www.stupidsid.com/knowledge-hub/placements/aptitude-test-questions', '551973e4b23c4'),
('http://www.stupidsid.com/knowledge-hub/placements/campus-placements-faqs', '551973e4b23c4'),
('http://www.stupidsid.com/knowledge-hub/placements/campus-placements-procedure', '551973e4b23c4'),
('http://www.stupidsid.com/knowledge-hub/placements/interview-questions', '551973e4b23c4'),
('http://www.stupidsid.com/knowledge-hub/placements/job-profiles', '551973e4b23c4'),
('http://www.stupidsid.com/knowledge-hub/placements/news', '551973e4b23c4'),
('http://www.stupidsid.com/knowledge-hub/placements/resume-evaluation', '551973e4b23c4'),
('http://www.stupidsid.com/privacy', '551973e4b23c4'),
('http://www.stupidsid.com/sign-up', '551973e4b23c4'),
('http://www.stupidsid.com/study-resources', '551973e4b23c4'),
('http://www.stupidsid.com/study-resources/documents/syllabus', '551973e4b23c4'),
('http://www.stupidsid.com/study-resources/documents/university-papers', '551973e4b23c4'),
('http://www.stupidsid.com/study-resources/documents/viva-questions', '551973e4b23c4'),
('http://www.stupidsid.com/study-resources/solved-question-papers/anna-university', '551973e4b23c4'),
('http://www.stupidsid.com/study-resources/solved-question-papers/features', '551973e4b23c4'),
('http://www.stupidsid.com/study-resources/solved-question-papers/gujarat-technological-university', '551973e4b23c4'),
('http://www.stupidsid.com/study-resources/solved-question-papers/help', '551973e4b23c4'),
('http://www.stupidsid.com/study-resources/solved-question-papers/mumbai-university', '551973e4b23c4'),
('http://www.stupidsid.com/study-resources/solved-question-papers/pune-university', '551973e4b23c4'),
('http://www.stupidsid.com/study-resources/solved-question-papers/rajiv-gandhi-proudyogiki-vishwavidyala', '551973e4b23c4'),
('http://www.stupidsid.com/study-resources/solved-question-papers/visvesvaraya-technological-university', '551973e4b23c4'),
('http://www.stupidsid.com/terms', '551973e4b23c4'),
('http://www.stupidsid.commailto:support@stupidsid.com', '551973e4b23c4'),
('http://www.youtube.com/', '5519641b8b3fe'),
('http://www.youtube.com/user/aadhaaruid', '551973f0dfc6b'),
('https://accounts.google.com/ServiceLogin', '5519641b8b3fe'),
('https://books.google.co.in/bkshp', '5519641b8b3fe'),
('https://developers.facebook.com/', '551973cee3ca9'),
('https://docs.google.com/document/', '5519641b8b3fe'),
('https://drive.google.com/', '5519641b8b3fe'),
('https://mail.google.com/mail/', '5519641b8b3fe'),
('https://photos.google.com/', '561e51000b6ff'),
('https://play.google.com/', '5519641b8b3fe'),
('https://play.google.com/store/apps/details', '551973e4b23c4'),
('https://plus.google.com/104205742743787718296', '5519641b8b3fe'),
('https://plus.google.com/photos', '5519641b8b3fe'),
('https://resident.uidai.net.in/', '551973f0dfc6b'),
('https://www.facebook.com/', '551973cee3ca9'),
('https://www.facebook.com/l.php', '551973cee3ca9'),
('https://www.facebook.com/recover/initiate', '551973cee3ca9'),
('https://www.google.co.in/webhp', '5519641b8b3fe'),
('https://www.google.com/calendar', '5519641b8b3fe');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `password`, `username`) VALUES
(1, '32250170a0dca92d53ec9624f336ca24', 'dhaval'),
(2, 'e10adc3949ba59abbe56e057f20f883e', 'dhavalc201'),
(6, '5f4dcc3b5aa765d61d8327deb882cf99', 'test'),
(9, '5f4dcc3b5aa765d61d8327deb882cf99', 'test2');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
