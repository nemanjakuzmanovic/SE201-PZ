-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 30, 2017 at 09:01 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `it255`
--

-- --------------------------------------------------------

--
-- Table structure for table `directors`
--

CREATE TABLE `directors` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `directors`
--

INSERT INTO `directors` (`id`, `name`) VALUES
(53, 'Aaron Sorkin'),
(7, 'Adam Wingard'),
(43, 'Alex Kurtzman'),
(56, 'Andy Muschietti'),
(36, 'Benny Boom'),
(44, 'Benny Safdie'),
(51, 'Bill Condon'),
(49, 'Chris Williams'),
(18, 'Christophe Lourdelet'),
(3, 'Christopher Nolan'),
(29, 'Darren Aronofsky'),
(13, 'David F. Sandberg'),
(10, 'David Leitch'),
(37, 'David Yates'),
(23, 'Denis Villeneuve'),
(47, 'Don Hall'),
(20, 'Doug Liman'),
(11, 'Edgar Wright'),
(19, 'Garth Jennings'),
(35, 'George Nolfi'),
(26, 'Guy Ritchie'),
(4, 'James Gunn'),
(54, 'James Ponsoldt'),
(48, 'John Musker'),
(9, 'Jon Watts'),
(52, 'Jordan Peele'),
(45, 'Josh Safdie'),
(28, 'Luc Besson'),
(12, 'Lucia Aniello'),
(42, 'Malcolm D. Lee'),
(21, 'Mark Palansky'),
(25, 'Masaru Matsumoto'),
(27, 'Matt Reeves'),
(40, 'Matthew Vaughn'),
(8, 'Nikolaj Arcel'),
(1, 'Patrick Hughes'),
(33, 'Patty Jenkins'),
(14, 'Rian Johnson'),
(34, 'Ric Roman Waugh'),
(30, 'Richard Linklater'),
(16, 'Ridley Scott'),
(39, 'Roger Michell'),
(46, 'Ron Clements'),
(55, 'Rupert Sanders'),
(50, 'Ryan Eggold'),
(5, 'Seth Gordon'),
(24, 'Shinji Aramaki'),
(2, 'Steven Soderbergh'),
(32, 'Taika Waititi'),
(17, 'Taylor Sheridan'),
(41, 'Toa Fraser'),
(15, 'Tom Ford'),
(6, 'Tommy Wirkola'),
(22, 'Tony Leondis'),
(38, 'Victor Mathieu'),
(31, 'Zack Snyder');

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`id`, `name`) VALUES
(1, 'Action'),
(10, 'Adventure'),
(48, 'Animation'),
(52, 'Biography'),
(2, 'Comedy'),
(4, 'Crime'),
(5, 'Drama'),
(50, 'Family'),
(17, 'Fantasy'),
(8, 'History'),
(18, 'Horror'),
(31, 'Music'),
(124, 'Musical'),
(19, 'Mystery'),
(41, 'Romance'),
(11, 'Sci-Fi'),
(16, 'Thriller');

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `id` int(11) NOT NULL,
  `title` varchar(45) NOT NULL,
  `movie_url` varchar(255) NOT NULL,
  `year` int(11) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `certificate` varchar(45) DEFAULT NULL,
  `runtime` int(11) DEFAULT NULL,
  `imdb_rating` float DEFAULT NULL,
  `description` text,
  `metascore` int(11) DEFAULT NULL,
  `votes` int(11) DEFAULT NULL,
  `gross` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id`, `title`, `movie_url`, `year`, `image_url`, `certificate`, `runtime`, `imdb_rating`, `description`, `metascore`, `votes`, `gross`) VALUES
(1, 'The Hitman\'s Bodyguard', 'http://www.imdb.com/title/tt1959563/?ref_=adv_li_tt', 2017, 'https://images-na.ssl-images-amazon.com/images/M/MV5BMjQ5NjA2NDg1MV5BMl5BanBnXkFtZTgwMDAzNDc4MjI@._V1_UX67_CR0,0,67,98_AL_.jpg', 'R', 118, 7.2, 'Paused at 23:34 minutes', 47, 16873, 39826623),
(2, 'Logan Laki', 'http://www.imdb.com/title/tt5439796/?ref_=adv_li_tt', 2017, 'https://images-na.ssl-images-amazon.com/images/M/MV5BMTYyODg0NDU1OV5BMl5BanBnXkFtZTgwNjcxMzU0MjI@._V1_UX67_CR0,0,67,98_AL_.jpg', 'PG-13', 118, 8.4, 'Watched this movie 6 times', 78, 6764, 14908962),
(3, 'Dunkirk', 'http://www.imdb.com/title/tt5013056/?ref_=adv_li_tt', 2017, 'https://images-na.ssl-images-amazon.com/images/M/MV5BN2YyZjQ0NTEtNzU5MS00NGZkLTg0MTEtYzJmMWY3MWRhZjM2XkEyXkFqcGdeQXVyMDA4NzMyOA@@._V1_UX67_CR0,0,67,98_AL_.jpg', 'PG-13', 106, 7.9, 'Allied soldiers from Belgium, the British Empire and France are surrounded by the German army and evacuated during a fierce battle in World War II.', 94, 190005, 172477172),
(5, 'ÄŒuvari galaksije 2', 'http://www.imdb.com/title/tt3896198/?ref_=adv_li_tt', 2017, 'https://images-na.ssl-images-amazon.com/images/M/MV5BMTg2MzI1MTg3OF5BMl5BanBnXkFtZTgwNTU3NDA2MTI@._V1_UX67_CR0,0,67,98_AL_.jpg', 'PG-13', 136, 5.6, 'The Guardians must fight to keep their newfound family together as they unravel the mystery of Peter Quill\'s true parentage.', 67, 236256, 389386420),
(8, 'ÄŒuvari plaÅ¾e', 'http://www.imdb.com/title/tt1469304/?ref_=adv_li_tt', 2017, 'https://images-na.ssl-images-amazon.com/images/M/MV5BNTA4MjQ0ODQzNF5BMl5BanBnXkFtZTgwNzA5NjYzMjI@._V1_UX67_CR0,0,67,98_AL_.jpg', 'R', 116, 6.9, 'Devoted lifeguard Mitch Buchannon butts heads with a brash new recruit, as they uncover a criminal plot that threatens the future of the bay.', 37, 44445, 58009442),
(12, 'Seven Sisters', 'http://www.imdb.com/title/tt1536537/?ref_=adv_li_tt', 2017, 'https://images-na.ssl-images-amazon.com/images/M/MV5BMjE4MDQxMDg3MF5BMl5BanBnXkFtZTgwNjQ0MTcwMzI@._V1_UX67_CR0,0,67,98_AL_.jpg', 'N/A', 123, 4.7, 'In a world where families are limited to one child due to overpopulation, a set of identical septuplets must avoid being put to a long sleep by the government and dangerous infighting while investigating the disappearance of one of their own.', 47, 8500, 0),
(18, 'Death Note', 'http://www.imdb.com/title/tt1241317/?ref_=adv_li_tt', 2017, 'https://images-na.ssl-images-amazon.com/images/M/MV5BMTUwOTgzMTEyOF5BMl5BanBnXkFtZTgwNTk3MTM5MjI@._V1_UX67_CR0,0,67,98_AL_.jpg', 'N/A', 101, 6, 'N/A', 42, 20284, 0),
(24, 'MraÄna kula', 'http://www.imdb.com/title/tt1648190/?ref_=adv_li_tt', 2017, 'https://images-na.ssl-images-amazon.com/images/M/MV5BMTU3MjUwMzQ3MF5BMl5BanBnXkFtZTgwMjcwNjkxMjI@._V1_UX67_CR0,0,67,98_AL_.jpg', 'PG-13', 95, 7.9, 'The last Gunslinger, Roland Deschain, has been locked in an eternal battle with Walter O\'Dim, also known as the Man in Black, determined to prevent him from toppling the Dark Tower, which holds the universe together. With the fate of the worlds at stake, good and evil will collide in the ultimate battle as only Roland can defend the Tower from the Man in Black.', 34, 20418, 45007046),
(31, 'Spajdermen: Povratak kuÄ‡i', 'http://www.imdb.com/title/tt2250912/?ref_=adv_li_tt', 2017, 'https://images-na.ssl-images-amazon.com/images/M/MV5BNTk4ODQ1MzgzNl5BMl5BanBnXkFtZTgwMTMyMzM4MTI@._V1_UX67_CR0,0,67,98_AL_.jpg', 'PG-13', 133, 7.1, 'Peter Parker tries to balance his life as an ordinary high school student in Queens with his superhero alter-ego Spider-Man, and must confront a new menace prowling the skies of New York City.', 73, 147997, 318938558),
(39, 'Atomska plavuÅ¡a', 'http://www.imdb.com/title/tt2406566/?ref_=adv_li_tt', 2017, 'https://images-na.ssl-images-amazon.com/images/M/MV5BMjM5NDYzMzg5N15BMl5BanBnXkFtZTgwOTM2NDU1MjI@._V1_UX67_CR0,0,67,98_AL_.jpg', 'R', 115, 8.2, 'An undercover MI6 agent is sent to Berlin during the Cold War to investigate the murder of a fellow agent and recover a missing list of double agents.', 63, 28997, 49029630),
(48, 'Baby Driver', 'http://www.imdb.com/title/tt3890160/?ref_=adv_li_tt', 2017, 'https://images-na.ssl-images-amazon.com/images/M/MV5BMjM3MjQ1MzkxNl5BMl5BanBnXkFtZTgwODk1ODgyMjI@._V1_UX67_CR0,0,67,98_AL_.jpg', 'R', 112, 5.3, 'After being coerced into working for a crime boss, a young getaway driver finds himself taking part in a heist doomed to fail.', 86, 98733, 103346388),
(58, 'Rough Night', 'http://www.imdb.com/title/tt4799050/?ref_=adv_li_tt', 2017, 'https://images-na.ssl-images-amazon.com/images/M/MV5BODY1NDUzNzY4MV5BMl5BanBnXkFtZTgwNzc3NzcyMjI@._V1_UX67_CR0,0,67,98_AL_.jpg', 'R', 101, 7.5, 'Things go terribly wrong for a group of girlfriends who hire a male stripper for a bachelorette party in Miami.', 51, 10417, 22092592),
(59, 'Anabel 2: Stvaranje zla', 'http://www.imdb.com/title/tt5140878/?ref_=adv_li_tt', 2017, 'https://images-na.ssl-images-amazon.com/images/M/MV5BMjA1MzIwMjMxNF5BMl5BanBnXkFtZTgwMDQ3NTc2MjI@._V1_UX67_CR0,0,67,98_AL_.jpg', 'R', 109, 7.4, 'Twelve years after the tragic death of their little girl, a dollmaker and his wife welcome a nun and several girls from a shuttered orphanage into their home, where they soon become the target of the dollmaker\'s possessed creation, Annabelle.', 62, 21310, 78211542),
(70, 'Ratovi Zvezde: Epizoda 8 - Poslednji DÅ¾edaj', 'http://www.imdb.com/title/tt2527336/?ref_=adv_li_tt', 2017, 'https://images-na.ssl-images-amazon.com/images/M/MV5BOTE5NzYyNjM0Ml5BMl5BanBnXkFtZTgwNjk4MDIwMjI@._V1_UX67_CR0,0,67,98_AL_.jpg', 'N/A', 0, 6.6, 'Having taken her first steps into a larger world in <a href=\"/title/tt2488496\">Zvezdani ratovi: Bu&#273;enje sile</a> (2015), Rey continues her epic journey with Finn, Poe and Luke Skywalker in the next chapter of the saga.', 0, 0, 0),
(82, 'NoÄ‡ne zveri', 'http://www.imdb.com/title/tt4550098/?ref_=adv_li_tt', 2016, 'https://images-na.ssl-images-amazon.com/images/M/MV5BMTYwMzMwMzgxNl5BMl5BanBnXkFtZTgwMTA0MTUzMDI@._V1_UX67_CR0,0,67,98_AL_.jpg', 'R', 116, 8, 'A wealthy art gallery owner receives a draft of her ex-husband\'s new novel, and once she starts reading it she just cannot put it down.', 67, 145090, 10639114),
(95, 'Osmi putnik: Kovenant', 'http://www.imdb.com/title/tt2316204/?ref_=adv_li_tt', 2017, 'https://images-na.ssl-images-amazon.com/images/M/MV5BNzI5MzM3MzkxNF5BMl5BanBnXkFtZTgwOTkyMjI4MTI@._V1_UX67_CR0,0,67,98_AL_.jpg', 'R', 122, 7.2, 'The crew of a colony ship, bound for a remote planet, discover an uncharted paradise with a threat beyond their imagination, and must attempt a harrowing escape.', 65, 138665, 74255908),
(109, 'Wind River', 'http://www.imdb.com/title/tt5362988/?ref_=adv_li_tt', 2017, 'https://images-na.ssl-images-amazon.com/images/M/MV5BMTUyMjU1OTUwM15BMl5BanBnXkFtZTgwMDg1NDQ2MjI@._V1_UX67_CR0,0,67,98_AL_.jpg', 'R', 107, 7.6, 'An FBI agent teams with a town\'s veteran game tracker to investigate a murder that occurred on a Native American reservation.', 73, 5914, 10031189),
(124, 'Pevajmo', 'http://www.imdb.com/title/tt3470600/?ref_=adv_li_tt', 2016, 'https://images-na.ssl-images-amazon.com/images/M/MV5BMTYzODYzODU2Ml5BMl5BanBnXkFtZTgwNTc1MTA2NzE@._V1_UX67_CR0,0,67,98_AL_.jpg', 'PG', 108, 6.5, 'In a city of humanoid animals, a hustling theater impresario\'s attempt to save his theater with a singing competition becomes grander than he anticipates even as its finalists\' find that their lives will never be the same.', 59, 77024, 270322340),
(140, 'American Made', 'http://www.imdb.com/title/tt3532216/?ref_=adv_li_tt', 2017, 'https://images-na.ssl-images-amazon.com/images/M/MV5BMTUxNzUwMjk1Nl5BMl5BanBnXkFtZTgwNDkwODI1MjI@._V1_UX67_CR0,0,67,98_AL_.jpg', 'R', 115, 2, 'A pilot lands work for the CIA and as a drug runner in the south during the 1980s.', 63, 2181, 0),
(157, 'Rememory', 'http://www.imdb.com/title/tt2331047/?ref_=adv_li_tt', 2017, 'https://images-na.ssl-images-amazon.com/images/M/MV5BMjMzNzAyNzYwOF5BMl5BanBnXkFtZTgwMDg5ODEyMzI@._V1_UX67_CR0,0,67,98_AL_.jpg', 'PG-13', 111, 5.5, 'The widow of a wise professor stumbles upon one of his inventions that\'s able to record and play a person\'s memory.', 0, 1450, 0),
(175, 'EmodÅ¾i film', 'http://www.imdb.com/title/tt4877122/?ref_=adv_li_tt', 2017, 'https://images-na.ssl-images-amazon.com/images/M/MV5BMTkzMzM3OTM2Ml5BMl5BanBnXkFtZTgwMDM0NDU3MjI@._V1_UX67_CR0,0,67,98_AL_.jpg', 'PG', 86, 7, 'Gene, a multi-expressional emoji, sets out on a journey to become a normal emoji.', 12, 18002, 76590041),
(194, 'IstrebljivaÄ 2', 'http://www.imdb.com/title/tt1856101/?ref_=adv_li_tt', 2017, 'https://images-na.ssl-images-amazon.com/images/M/MV5BMjM3NjcxNDM4Ml5BMl5BanBnXkFtZTgwMjI4NDIzMzI@._V1_UX67_CR0,0,67,98_AL_.jpg', 'R', 0, 7.9, 'A young blade runner\'s discovery of a long buried secret leads him on a quest to track down former blade runner, Rick Deckard, who\'s been missing for thirty years.', 0, 0, 0),
(215, 'Starship Troopers: Traitor of Mars', 'http://www.imdb.com/title/tt6977240/?ref_=adv_li_tt', 2017, 'https://images-na.ssl-images-amazon.com/images/M/MV5BYzM4OWNlM2UtYjdiMi00MGIxLTg4NzMtZWM2MWViZjMyMzA4XkEyXkFqcGdeQXVyOTg4MDYyNw@@._V1_UY98_CR1,0,67,98_AL_.jpg', 'R', 100, 6.7, 'Federation trooper Johnny Rico is ordered to work with a group of new recruits on a satellite station on Mars, where giant bugs have decided to target their next attack.', 0, 854, 0),
(236, 'Kralj Artur: Legenda o maÄu', 'http://www.imdb.com/title/tt1972591/?ref_=adv_li_tt', 2017, 'https://images-na.ssl-images-amazon.com/images/M/MV5BMjM3ODY3Njc5Ml5BMl5BanBnXkFtZTgwMjQ5NjM5MTI@._V1_UX67_CR0,0,67,98_AL_.jpg', 'PG-13', 126, 7.8, 'Robbed of his birthright, Arthur comes up the hard way in the back alleys of the city. But once he pulls the sword from the stone, he is forced to acknowledge his true legacy - whether he likes it or not.', 0, 95160, 39141376),
(258, 'War for the Planet of the Apes', 'http://www.imdb.com/title/tt3450958/?ref_=adv_li_tt', 2017, 'https://images-na.ssl-images-amazon.com/images/M/MV5BOGIxMjIxNDYtOGU5Ny00OWE5LWEwMjEtY2U5NTE0YzY4YTUyXkEyXkFqcGdeQXVyNjUwNzk3NDc@._V1_UX67_CR0,0,67,98_AL_.jpg', 'PG-13', 140, 7.4, 'After the apes suffer unimaginable losses, Caesar wrestles with his darker instincts and begins his own mythic quest to avenge his kind.', 82, 69479, 142787094),
(281, 'Valerian and the City of a Thousand Planets', 'http://www.imdb.com/title/tt2239822/?ref_=adv_li_tt', 2017, 'https://images-na.ssl-images-amazon.com/images/M/MV5BMTkxMDAxNDUyNV5BMl5BanBnXkFtZTgwOTc3MzcxMjI@._V1_UX67_CR0,0,67,98_AL_.jpg', 'PG-13', 137, 4.1, 'A dark force threatens Alpha, a vast metropolis and home to species from a thousand planets. Special operatives Valerian and Laureline must race to identify the marauding menace and safeguard not just Alpha, but the future of the universe.', 51, 35557, 39687711),
(305, 'Mother!', 'http://www.imdb.com/title/tt5109784/?ref_=adv_li_tt', 2017, 'https://images-na.ssl-images-amazon.com/images/M/MV5BMzc5ODExODE0MV5BMl5BanBnXkFtZTgwNDkzNDUxMzI@._V1_UX67_CR0,0,67,98_AL_.jpg', 'N/A', 115, 5.9, 'A couple\'s relationship is tested when uninvited guests arrive at their home, disrupting their tranquil existence.', 0, 0, 0),
(330, 'Last Flag Flying', 'http://www.imdb.com/title/tt6018306/?ref_=adv_li_tt', 2017, 'https://images-na.ssl-images-amazon.com/images/M/MV5BMTUyMjA5OTc4NF5BMl5BanBnXkFtZTgwNTgxNjEzMzI@._V1_UX67_CR0,0,67,98_AL_.jpg', 'R', 0, 7.4, 'Thirty years after they served together in Vietnam, a former Navy Corpsman Larry \"Doc\" Shepherd re-unites with his old buddies, former Marines Sal Nealon and Reverend Richard Mueller, to bury his son, a young Marine killed in the Iraq War.', 0, 0, 0),
(357, 'Justice League', 'http://www.imdb.com/title/tt0974015/?ref_=adv_li_tt', 2017, 'https://images-na.ssl-images-amazon.com/images/M/MV5BMjI2NjI2MDQ0NV5BMl5BanBnXkFtZTgwMTc1MjAwMjI@._V1_UX67_CR0,0,67,98_AL_.jpg', 'N/A', 0, 4.3, 'Fueled by his restored faith in humanity and inspired by Superman\'s selfless act, Bruce Wayne enlists the help of his newfound ally, Diana Prince, to face an even greater enemy.', 0, 0, 0),
(384, 'Thor: Ragnarok', 'http://www.imdb.com/title/tt3501632/?ref_=adv_li_tt', 2017, 'https://images-na.ssl-images-amazon.com/images/M/MV5BMjMyNDkzMzI1OF5BMl5BanBnXkFtZTgwODcxODg5MjI@._V1_UX67_CR0,0,67,98_AL_.jpg', 'N/A', 0, 6.1, 'Imprisoned, the mighty Thor finds himself in a lethal gladiatorial contest against the Hulk, his former ally. Thor must fight for survival and race against time to prevent the all-powerful Hela from destroying his home and the Asgardian civilization.', 0, 0, 0),
(412, 'ÄŒudesna Å¾ena', 'http://www.imdb.com/title/tt0451279/?ref_=adv_li_tt', 2017, 'https://images-na.ssl-images-amazon.com/images/M/MV5BNDFmZjgyMTEtYTk5MC00NmY0LWJhZjktOWY2MzI5YjkzODNlXkEyXkFqcGdeQXVyMDA4NzMyOA@@._V1_UX67_CR0,0,67,98_AL_.jpg', 'PG-13', 141, 6.2, 'Before she was Wonder Woman, she was Diana, princess of the Amazons, trained warrior. When a pilot crashes and tells of conflict in the outside world, she leaves home to fight a war, discovering her full powers and true destiny.', 76, 236515, 406193262),
(441, 'Shot Caller', 'http://www.imdb.com/title/tt4633690/?ref_=adv_li_tt', 2017, 'https://images-na.ssl-images-amazon.com/images/M/MV5BMGY0YTM3MjItZmExMy00NDgyLThjNzUtZWQ1MzY2NGRmMjZhXkEyXkFqcGdeQXVyMzYyMzE1NjA@._V1_UX67_CR0,0,67,98_AL_.jpg', 'R', 121, 6.9, 'A newly released prison gangster is forced by the leaders of his gang to orchestrate a major crime with a brutal rival gang on the streets of Southern California.', 59, 16640, 0),
(471, 'Birth of the Dragon', 'http://www.imdb.com/title/tt2720826/?ref_=adv_li_tt', 2016, 'https://images-na.ssl-images-amazon.com/images/M/MV5BMzk3OTQ4MjY0OF5BMl5BanBnXkFtZTgwNzQ2MTcwMzI@._V1_UX67_CR0,0,67,98_AL_.jpg', 'PG-13', 103, 5.6, 'Set against the backdrop of 1960s San Francisco, BIRTH OF THE DRAGON is a modern take on the classic movies that Bruce Lee was known for. It takes its inspiration from the epic and still controversial showdown between an up-and-coming Bruce Lee and kung fu master Wong Jack Man - a battle that gave birth to a legend.', 38, 1126, 2702430),
(502, 'All Eyez on Me', 'http://www.imdb.com/title/tt1666185/?ref_=adv_li_tt', 2017, 'https://images-na.ssl-images-amazon.com/images/M/MV5BMTc5NzQ4NzU4OF5BMl5BanBnXkFtZTgwNTkxMzE0MjI@._V1_UX67_CR0,0,67,98_AL_.jpg', 'R', 139, 8, 'Tells the true and untold story of prolific rapper, actor, poet and activist Tupac Shakur.', 38, 7339, 44892121),
(534, 'FantastiÄne zveri i gde ih naÄ‡i', 'http://www.imdb.com/title/tt3183660/?ref_=adv_li_tt', 2016, 'https://images-na.ssl-images-amazon.com/images/M/MV5BMjMxOTM1OTI4MV5BMl5BanBnXkFtZTgwODE5OTYxMDI@._V1_UX67_CR0,0,67,98_AL_.jpg', 'PG-13', 133, 7.7, 'The adventures of writer Newt Scamander in New York\'s secret community of witches and wizards seventy years before Harry Potter reads his book in school.', 66, 258544, 234018657),
(567, 'The Monster Project', 'http://www.imdb.com/title/tt4537888/?ref_=adv_li_tt', 2017, 'https://images-na.ssl-images-amazon.com/images/M/MV5BODE3ZDI1ZjctNDMwOC00NTJlLTg1MGItMjQwYzIyYmE5MDlhXkEyXkFqcGdeQXVyMjM5MTYyOTA@._V1_UX67_CR0,0,67,98_AL_.jpg', 'N/A', 95, 7.1, 'A recovering drug addict takes a job with a documentary crew who plans to interview three subjects who claim to be real life monsters.', 0, 749, 0),
(602, 'My Cousin Rachel', 'http://www.imdb.com/title/tt4411596/?ref_=adv_li_tt', 2017, 'https://images-na.ssl-images-amazon.com/images/M/MV5BMTc1NTY3MjEwM15BMl5BanBnXkFtZTgwNTY2MzUyMTI@._V1_UX67_CR0,0,67,98_AL_.jpg', 'PG-13', 106, 7.4, 'A young Englishman plots revenge against his late cousin\'s mysterious, beautiful wife, believing her responsible for his death. But his feelings become complicated as he finds himself falling under the beguiling spell of her charms.', 63, 3606, 2711003),
(637, 'Kingsman: The Golden Circle', 'http://www.imdb.com/title/tt4649466/?ref_=adv_li_tt', 2017, 'https://images-na.ssl-images-amazon.com/images/M/MV5BNTBlOWZhZTctOTY0MC00Y2QyLTljMmYtZDkxZDFlMWU4Y2EyXkEyXkFqcGdeQXVyNDg2MjUxNjM@._V1_UX67_CR0,0,67,98_AL_.jpg', 'N/A', 0, 7.8, 'When their headquarters are destroyed and the world is held hostage, the Kingsman\'s journey leads them to the discovery of an allied spy organization in the US. These two elite secret organizations must band together to defeat a common enemy.', 0, 0, 0),
(673, '6 Days', 'http://www.imdb.com/title/tt4703048/?ref_=adv_li_tt', 2017, 'https://images-na.ssl-images-amazon.com/images/M/MV5BZmI0NjgzOTktMmU1OS00MmU2LWJkMzgtMzlkMWY4ZWRmZTY5XkEyXkFqcGdeQXVyNTEzMzUyNDI@._V1_UY98_CR31,0,67,98_AL_.jpg', 'R', 94, 5.3, 'N/A', 36, 994, 0),
(710, 'Girls Trip', 'http://www.imdb.com/title/tt3564472/?ref_=adv_li_tt', 2017, 'https://images-na.ssl-images-amazon.com/images/M/MV5BMjMwNTEzODUwMV5BMl5BanBnXkFtZTgwNjE5NjA5MjI@._V1_UX67_CR0,0,67,98_AL_.jpg', 'R', 122, 6.5, 'When four lifelong friends travel to New Orleans for the annual Essence Festival, sisterhoods are rekindled, wild sides are rediscovered, and there\'s enough dancing, drinking, brawling, and romancing to make the Big Easy blush.', 71, 5371, 108166960),
(750, 'Mumija', 'http://www.imdb.com/title/tt2345759/?ref_=adv_li_tt', 2017, 'https://images-na.ssl-images-amazon.com/images/M/MV5BODg1NTIxMzEtM2NmMi00MDQ2LWE5YjYtZTgxYmNhZTQxYWIzXkEyXkFqcGdeQXVyNDYzODU1ODM@._V1_UX67_CR0,0,67,98_AL_.jpg', 'PG-13', 110, 0, 'An ancient princess is awakened from her crypt beneath the desert, bringing with her malevolence grown over millennia, and terrors that defy human comprehension.', 34, 73424, 80072590),
(789, 'Good Time', 'http://www.imdb.com/title/tt4846232/?ref_=adv_li_tt', 2017, 'https://images-na.ssl-images-amazon.com/images/M/MV5BNGQ3Y2VjNmUtMDdiMC00YTE1LWI5NmUtZDIzMTJmODQyNDU4XkEyXkFqcGdeQXVyNTAzMTY4MDA@._V1_UX67_CR0,0,67,98_AL_.jpg', 'R', 100, 0, 'A bank robber finds himself unable to evade his pursuers.', 80, 1869, 999867),
(830, 'Vajana', 'http://www.imdb.com/title/tt3521164/?ref_=adv_li_tt', 2016, 'https://images-na.ssl-images-amazon.com/images/M/MV5BMjI4MzU5NTExNF5BMl5BanBnXkFtZTgwNzY1MTEwMDI@._V1_UX67_CR0,0,67,98_AL_.jpg', 'PG', 107, 0, 'In Ancient Polynesia, when a terrible curse incurred by the Demigod Maui reaches Moana\'s island, she answers the Ocean\'s call to seek out the Demigod to set things right.', 81, 149270, 248752120),
(871, 'Literally, Right Before Aaron', 'http://www.imdb.com/title/tt5758802/?ref_=adv_li_tt', 2017, 'https://images-na.ssl-images-amazon.com/images/M/MV5BMTEzNjgzODY0MDZeQTJeQWpwZ15BbWU4MDQ2NDE0MjMy._V1_UX67_CR0,0,67,98_AL_.jpg', 'N/A', 105, 0, 'A young man attends the wedding of his ex-girlfriend.', 0, 45, 0),
(914, 'Lepotica i zver', 'http://www.imdb.com/title/tt2771200/?ref_=adv_li_tt', 2017, 'https://images-na.ssl-images-amazon.com/images/M/MV5BMTUwNjUxMTM4NV5BMl5BanBnXkFtZTgwODExMDQzMTI@._V1_UX67_CR0,0,67,98_AL_.jpg', 'PG', 129, 0, 'An adaptation of the fairy tale about a monstrous-looking prince and a young woman who fall in love.', 65, 161814, 503974884),
(957, 'BeÅ¾i', 'http://www.imdb.com/title/tt5052448/?ref_=adv_li_tt', 2017, 'https://images-na.ssl-images-amazon.com/images/M/MV5BNTE2Nzg1NjkzNV5BMl5BanBnXkFtZTgwOTgyODMyMTI@._V1_UX67_CR0,0,67,98_AL_.jpg', 'R', 104, 0, 'It\'s time for a young African American to meet with his white girlfriend\'s parents for a weekend in their secluded estate in the woods, but before long, the friendly and polite ambience will give way to a nightmare.', 84, 169175, 175428355),
(1002, 'Molly\'s Game', 'http://www.imdb.com/title/tt4209788/?ref_=adv_li_tt', 2017, 'https://images-na.ssl-images-amazon.com/images/M/MV5BMTYxNzU3MzEwNV5BMl5BanBnXkFtZTgwMDk4NzIyMzI@._V1_UX67_CR0,0,67,98_AL_.jpg', 'N/A', 0, 0, 'The true story of an Olympic-class skier who ran the world\'s most exclusive high-stakes poker game and became an FBI target. Her players included movie stars, business titans and unbeknownst to her, the Russian mob.', 0, 0, 0),
(1048, 'The Circle', 'http://www.imdb.com/title/tt4287320/?ref_=adv_li_tt', 2017, 'https://images-na.ssl-images-amazon.com/images/M/MV5BMjY2OTM2Njc3Ml5BMl5BanBnXkFtZTgwNDgzODU3MTI@._V1_UX67_CR0,0,67,98_AL_.jpg', 'PG-13', 110, 0, 'A woman lands a dream job at a powerful tech company called the Circle, only to uncover an agenda that will affect the lives of all of humanity.', 43, 33271, 20476391),
(1094, 'Duh u oklopu', 'http://www.imdb.com/title/tt1219827/?ref_=adv_li_tt', 2017, 'https://images-na.ssl-images-amazon.com/images/M/MV5BMzJiNTI3MjItMGJiMy00YzA1LTg2MTItZmE1ZmRhOWQ0NGY1XkEyXkFqcGdeQXVyOTk4MTM0NQ@@._V1_UX67_CR0,0,67,98_AL_.jpg', 'PG-13', 107, 0, 'In the near future, Major is the first of her kind: A human saved from a terrible crash, who is cyber-enhanced to be a perfect soldier devoted to stopping the world\'s most dangerous criminals.', 52, 110861, 40533014),
(1142, 'It', 'http://www.imdb.com/title/tt1396484/?ref_=adv_li_tt', 2017, 'https://images-na.ssl-images-amazon.com/images/M/MV5BOTE0NWEyNDYtYWI5MC00MWY0LTg1NDctZjAwMjkyMWJiNzk1XkEyXkFqcGdeQXVyNjk5NDA3OTk@._V1_UX67_CR0,0,67,98_AL_.jpg', 'R', 135, 7, 'A group of bullied kids band together when a monster, taking the appearance of a clown, begins hunting children.', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `movies_directors`
--

CREATE TABLE `movies_directors` (
  `movies_id` int(11) NOT NULL,
  `directors_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movies_directors`
--

INSERT INTO `movies_directors` (`movies_id`, `directors_id`) VALUES
(1, 1),
(2, 2),
(3, 3),
(5, 4),
(8, 5),
(12, 6),
(18, 7),
(24, 8),
(31, 9),
(39, 10),
(48, 11),
(58, 12),
(59, 13),
(70, 14),
(82, 15),
(95, 16),
(109, 17),
(124, 18),
(124, 19),
(140, 20),
(157, 21),
(175, 22),
(194, 23),
(215, 24),
(215, 25),
(236, 26),
(258, 27),
(281, 28),
(305, 29),
(330, 30),
(357, 31),
(384, 32),
(412, 33),
(441, 34),
(471, 35),
(502, 36),
(534, 37),
(567, 38),
(602, 39),
(637, 40),
(673, 41),
(710, 42),
(750, 43),
(789, 44),
(789, 45),
(830, 46),
(830, 47),
(830, 48),
(830, 49),
(871, 50),
(914, 51),
(957, 52),
(1002, 53),
(1048, 54),
(1094, 55),
(1142, 56);

-- --------------------------------------------------------

--
-- Table structure for table `movies_genres`
--

CREATE TABLE `movies_genres` (
  `movies_id` int(11) NOT NULL,
  `genres_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movies_genres`
--

INSERT INTO `movies_genres` (`movies_id`, `genres_id`) VALUES
(1, 1),
(1, 2),
(2, 2),
(2, 4),
(2, 5),
(3, 1),
(3, 5),
(3, 8),
(5, 1),
(5, 10),
(5, 11),
(8, 1),
(8, 2),
(8, 5),
(12, 11),
(12, 16),
(18, 17),
(18, 18),
(18, 19),
(24, 1),
(24, 10),
(24, 17),
(31, 1),
(31, 10),
(31, 11),
(39, 1),
(39, 16),
(39, 19),
(48, 1),
(48, 4),
(48, 31),
(58, 2),
(59, 16),
(59, 18),
(59, 19),
(70, 1),
(70, 10),
(70, 17),
(82, 4),
(82, 5),
(82, 41),
(95, 11),
(95, 16),
(95, 18),
(109, 1),
(109, 4),
(109, 19),
(124, 2),
(124, 48),
(124, 50),
(140, 1),
(140, 2),
(140, 52),
(157, 5),
(157, 11),
(157, 19),
(175, 2),
(175, 10),
(175, 48),
(194, 11),
(194, 16),
(215, 1),
(215, 11),
(215, 48),
(236, 1),
(236, 5),
(236, 10),
(258, 1),
(258, 5),
(258, 10),
(281, 1),
(281, 10),
(281, 17),
(305, 5),
(305, 18),
(305, 19),
(330, 2),
(330, 5),
(357, 1),
(357, 10),
(357, 17),
(384, 1),
(384, 10),
(384, 17),
(412, 1),
(412, 10),
(412, 17),
(441, 4),
(441, 5),
(441, 16),
(471, 1),
(471, 5),
(471, 52),
(502, 5),
(502, 31),
(502, 52),
(534, 10),
(534, 17),
(534, 50),
(567, 1),
(567, 18),
(602, 5),
(602, 19),
(602, 41),
(637, 1),
(637, 2),
(637, 10),
(673, 1),
(673, 5),
(673, 8),
(710, 2),
(750, 1),
(750, 10),
(750, 17),
(789, 4),
(789, 5),
(830, 2),
(830, 10),
(830, 48),
(871, 2),
(871, 5),
(914, 17),
(914, 50),
(914, 124),
(957, 18),
(957, 19),
(1002, 5),
(1002, 52),
(1048, 5),
(1048, 11),
(1048, 16),
(1094, 1),
(1094, 4),
(1094, 5),
(1142, 5),
(1142, 18);

-- --------------------------------------------------------

--
-- Table structure for table `movies_stars`
--

CREATE TABLE `movies_stars` (
  `movies_id` int(11) NOT NULL,
  `stars_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movies_stars`
--

INSERT INTO `movies_stars` (`movies_id`, `stars_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 4),
(2, 5),
(2, 6),
(3, 7),
(3, 8),
(3, 9),
(5, 10),
(5, 11),
(5, 12),
(8, 13),
(8, 14),
(8, 15),
(12, 16),
(12, 17),
(12, 18),
(18, 19),
(18, 20),
(18, 21),
(24, 22),
(24, 23),
(24, 24),
(31, 25),
(31, 26),
(31, 27),
(39, 28),
(39, 29),
(39, 30),
(48, 31),
(48, 32),
(48, 33),
(58, 34),
(58, 35),
(58, 36),
(59, 37),
(59, 38),
(59, 39),
(70, 40),
(70, 41),
(70, 42),
(82, 43),
(82, 44),
(82, 45),
(95, 46),
(95, 47),
(95, 48),
(109, 49),
(109, 50),
(109, 51),
(124, 23),
(124, 53),
(124, 54),
(140, 55),
(140, 56),
(140, 57),
(157, 58),
(157, 59),
(157, 60),
(175, 61),
(175, 62),
(175, 63),
(194, 64),
(194, 65),
(194, 66),
(215, 67),
(215, 68),
(215, 69),
(236, 70),
(236, 71),
(236, 72),
(258, 73),
(258, 74),
(258, 75),
(281, 76),
(281, 77),
(281, 78),
(305, 79),
(305, 80),
(305, 81),
(330, 82),
(330, 83),
(330, 84),
(357, 85),
(357, 86),
(357, 87),
(384, 88),
(384, 89),
(384, 90),
(412, 86),
(412, 92),
(412, 93),
(441, 32),
(441, 94),
(441, 96),
(471, 97),
(471, 98),
(471, 99),
(502, 100),
(502, 101),
(502, 102),
(534, 47),
(534, 103),
(534, 105),
(567, 106),
(567, 107),
(567, 108),
(602, 109),
(602, 110),
(602, 111),
(637, 112),
(637, 113),
(637, 114),
(673, 114),
(673, 115),
(673, 117),
(710, 118),
(710, 119),
(710, 120),
(750, 55),
(750, 122),
(750, 123),
(789, 124),
(789, 125),
(789, 126),
(830, 13),
(830, 127),
(830, 129),
(871, 130),
(871, 131),
(871, 132),
(914, 133),
(914, 134),
(914, 135),
(957, 136),
(957, 137),
(957, 138),
(1002, 22),
(1002, 139),
(1002, 141),
(1048, 41),
(1048, 133),
(1048, 143),
(1094, 34),
(1094, 146),
(1094, 147),
(1142, 148),
(1142, 149),
(1142, 150);

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE `purchase` (
  `id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `p_id` int(30) NOT NULL,
  `p_date` datetime NOT NULL,
  `exp_date` datetime NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`id`, `movie_id`, `user_id`, `p_id`, `p_date`, `exp_date`, `description`) VALUES
(37, 1, 2, 2, '2017-08-30 19:34:58', '2067-08-30 19:34:58', 'nije najbolji'),
(38, 1142, 2, 3, '2017-08-30 19:35:42', '2017-08-31 19:35:42', ''),
(39, 12, 1, 2, '2017-08-30 20:06:19', '2067-08-30 20:06:19', '2/10');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_details`
--

CREATE TABLE `purchase_details` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase_details`
--

INSERT INTO `purchase_details` (`id`, `name`) VALUES
(1, 'All_movies'),
(2, 'Bought'),
(3, 'Rent');

-- --------------------------------------------------------

--
-- Table structure for table `stars`
--

CREATE TABLE `stars` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stars`
--

INSERT INTO `stars` (`id`, `name`) VALUES
(115, 'Abbie Cornish'),
(5, 'Adam Driver'),
(15, 'Alexandra Daddario'),
(105, 'Alison Sudol'),
(137, 'Allison Williams'),
(43, 'Amy Adams'),
(66, 'Ana de Armas'),
(73, 'Andy Serkis'),
(63, 'Anna Faris'),
(123, 'Annabelle Wallis'),
(31, 'Ansel Elgort'),
(37, 'Anthony LaPaglia'),
(71, 'Astrid BergÃ¨s-Frisbey'),
(127, 'Auli\'i Cravalho'),
(8, 'Barry Keoghan'),
(85, 'Ben Affleck'),
(125, 'Benny Safdie'),
(148, 'Bill SkarsgÃ¥rd'),
(48, 'Billy Crudup'),
(97, 'Billy Magnussen'),
(138, 'Bradley Whitford'),
(82, 'Bryan Cranston'),
(77, 'Cara Delevingne'),
(67, 'Casper Van Dien'),
(90, 'Cate Blanchett'),
(4, 'Channing Tatum'),
(70, 'Charlie Hunnam'),
(28, 'Charlize Theron'),
(88, 'Chris Hemsworth'),
(92, 'Chris Pine'),
(10, 'Chris Pratt'),
(78, 'Clive Owen'),
(130, 'Cobie Smulders'),
(113, 'Colin Firth'),
(40, 'Daisy Ridley'),
(134, 'Dan Stevens'),
(131, 'Dana Delany'),
(101, 'Danai Gurira'),
(76, 'Dane DeHaan'),
(6, 'Daniel Craig'),
(136, 'Daniel Kaluuya'),
(12, 'Dave Bautista'),
(100, 'Demetrius Shipp Jr.'),
(69, 'DeRay Davis'),
(68, 'Dina Meyer'),
(57, 'Domhnall Gleeson'),
(13, 'Dwayne Johnson'),
(81, 'Ed Harris'),
(103, 'Eddie Redmayne'),
(133, 'Emma Watson'),
(150, 'Finn Wolfhard'),
(7, 'Fionn Whitehead'),
(86, 'Gal Gadot'),
(3, 'Gary Oldman'),
(17, 'Glenn Close'),
(64, 'Harrison Ford'),
(111, 'Holliday Grainger'),
(22, 'Idris Elba'),
(120, 'Jada Pinkett Smith'),
(149, 'Jaeden Lieberher'),
(44, 'Jake Gyllenhaal'),
(62, 'James Corden'),
(29, 'James McAvoy'),
(117, 'Jamie Bell'),
(87, 'Jason Momoa'),
(80, 'Javier Bardem'),
(79, 'Jennifer Lawrence'),
(50, 'Jeremy Renner'),
(139, 'Jessica Chastain'),
(41, 'John Boyega'),
(30, 'John Goodman'),
(32, 'Jon Bernthal'),
(33, 'Jon Hamm'),
(60, 'Jordana Largy'),
(72, 'Jude Law'),
(51, 'Julia Jones'),
(107, 'Justin Bruening'),
(102, 'Kat Graham'),
(35, 'Kate McKinnon'),
(47, 'Katherine Waterston'),
(49, 'Kelsey Asbille'),
(96, 'Lake Bell'),
(20, 'Lakeith Stanfield'),
(84, 'Laurence Fishburne'),
(132, 'Lea Thompson'),
(135, 'Luke Evans'),
(21, 'Margaret Qualley'),
(42, 'Mark Hamill'),
(9, 'Mark Rylance'),
(114, 'Mark Strong'),
(59, 'Matt Ellis'),
(23, 'Matthew McConaughey'),
(46, 'Michael Fassbender'),
(26, 'Michael Keaton'),
(45, 'Michael Shannon'),
(39, 'Miranda Otto'),
(108, 'Murielle Zuker'),
(19, 'Nat Wolff'),
(141, 'Natalie Krill'),
(94, 'Nikolaj Coster-Waldau'),
(16, 'Noomi Rapace'),
(58, 'Peter Dinklage'),
(99, 'Philip Ng'),
(146, 'Pilou AsbÃ¦k'),
(119, 'Queen Latifah'),
(129, 'Rachel House'),
(109, 'Rachel Weisz'),
(53, 'Reese Witherspoon'),
(118, 'Regina Hall'),
(27, 'Robert Downey Jr.'),
(124, 'Robert Pattinson'),
(93, 'Robin Wright'),
(65, 'Ryan Gosling'),
(1, 'Ryan Reynolds'),
(110, 'Sam Claflin'),
(38, 'Samara Lee'),
(2, 'Samuel L. Jackson'),
(56, 'Sarah Wright'),
(34, 'Scarlett Johansson'),
(54, 'Seth MacFarlane'),
(122, 'Sofia Boutella'),
(83, 'Steve Carell'),
(75, 'Steve Zahn'),
(61, 'T.J. Miller'),
(147, 'Takeshi Kitano'),
(126, 'Taliah Webster'),
(112, 'Taron Egerton'),
(106, 'Toby Hemingway'),
(55, 'Tom Cruise'),
(143, 'Tom Hanks'),
(89, 'Tom Hiddleston'),
(25, 'Tom Holland'),
(24, 'Tom Taylor'),
(18, 'Willem Dafoe'),
(74, 'Woody Harrelson'),
(98, 'Yu Xia'),
(14, 'Zac Efron'),
(36, 'ZoÃ« Kravitz'),
(11, 'Zoe Saldana');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstname` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `lastname` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `username` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `password` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `token` varchar(128) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `password`, `token`) VALUES
(1, 'Nemanja', 'Administratorovic', 'admin', '21232f297a57a5a743894a0e4a801fc3', '52540cb8c129eaa9a0e4bdcf76e48a78a4daf40a'),
(2, 'Nemanja', 'Kuzmanovic', 'nomad', '4608674372223e82ba736b5b52871b3f', 'babc421c334c73f6cef8f50d538cec2843522b4e');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `directors`
--
ALTER TABLE `directors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name_UNIQUE` (`name`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name_UNIQUE` (`name`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title_UNIQUE` (`title`);

--
-- Indexes for table `movies_directors`
--
ALTER TABLE `movies_directors`
  ADD PRIMARY KEY (`movies_id`,`directors_id`),
  ADD KEY `fk_movies_has_directors_directors1_idx` (`directors_id`),
  ADD KEY `fk_movies_has_directors_movies_idx` (`movies_id`);

--
-- Indexes for table `movies_genres`
--
ALTER TABLE `movies_genres`
  ADD PRIMARY KEY (`movies_id`,`genres_id`),
  ADD KEY `fk_movies_has_genres_genres1_idx` (`genres_id`),
  ADD KEY `fk_movies_has_genres_movies1_idx` (`movies_id`);

--
-- Indexes for table `movies_stars`
--
ALTER TABLE `movies_stars`
  ADD PRIMARY KEY (`movies_id`,`stars_id`),
  ADD KEY `fk_movies_has_stars_stars1_idx` (`stars_id`),
  ADD KEY `fk_movies_has_stars_movies1_idx` (`movies_id`);

--
-- Indexes for table `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`id`),
  ADD KEY `movie_id` (`movie_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `p_id` (`p_id`);

--
-- Indexes for table `purchase_details`
--
ALTER TABLE `purchase_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stars`
--
ALTER TABLE `stars`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name_UNIQUE` (`name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `directors`
--
ALTER TABLE `directors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;
--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1143;
--
-- AUTO_INCREMENT for table `purchase`
--
ALTER TABLE `purchase`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `purchase_details`
--
ALTER TABLE `purchase_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `stars`
--
ALTER TABLE `stars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `movies_directors`
--
ALTER TABLE `movies_directors`
  ADD CONSTRAINT `fk_movies_has_directors_directors1` FOREIGN KEY (`directors_id`) REFERENCES `directors` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_movies_has_directors_movies` FOREIGN KEY (`movies_id`) REFERENCES `movies` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `movies_genres`
--
ALTER TABLE `movies_genres`
  ADD CONSTRAINT `fk_movies_has_genres_genres1` FOREIGN KEY (`genres_id`) REFERENCES `genres` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_movies_has_genres_movies1` FOREIGN KEY (`movies_id`) REFERENCES `movies` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `movies_stars`
--
ALTER TABLE `movies_stars`
  ADD CONSTRAINT `fk_movies_has_stars_movies1` FOREIGN KEY (`movies_id`) REFERENCES `movies` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_movies_has_stars_stars1` FOREIGN KEY (`stars_id`) REFERENCES `stars` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `purchase`
--
ALTER TABLE `purchase`
  ADD CONSTRAINT `purchase_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `purchase_ibfk_2` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`),
  ADD CONSTRAINT `purchase_ibfk_3` FOREIGN KEY (`p_id`) REFERENCES `purchase_details` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
