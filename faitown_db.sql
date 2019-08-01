-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Ноя 28 2017 г., 01:42
-- Версия сервера: 10.1.26-MariaDB
-- Версия PHP: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `faitown_db`
--

-- --------------------------------------------------------

--
-- Структура таблицы `fairy`
--

CREATE TABLE `fairy` (
  `id` int(11) UNSIGNED NOT NULL,
  `book_name` varchar(32) NOT NULL,
  `author` varchar(42) NOT NULL,
  `year` smallint(11) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `fairy`
--

INSERT INTO `fairy` (`id`, `book_name`, `author`, `year`, `description`, `image`) VALUES
(1, 'The Ugly Duckling', 'Hans Christian Andersen', 1844, 'This is the story of a swan born into a family of ducks, who is cast out of the pond because the other animals believe such an \"ugly duckling\" doesn\'t belong with them. Wherever he goes, the ugly duckling encounters animals that shun him for the same reason. Upon encountering a group of elegant white birds, the ugly duckling aspires to one day be as beautiful as them. After a dreadfully cold and lonely winter, the ugly duckling sees his reflection in the water and realizes that he wasn\'t a duck after all - he has grown to be the most beautiful swan in the pond.', 'The Ugly Duckling'),
(2, 'Peter Pan', 'J. M. Barrie', 1902, 'Peter Pan is the Boy Who Wouldn\'t Grow Up, the central character in an enduring modern fantasy story. He is a mischievous boy who can fly, he refuses by an act of will to ever grow up, and he spends his never-ending childhood adventuring on the small island of Never Land as the leader of his gang the Lost Boys, interacting with mermaids, Indians, fairies, and pirates, and from time to time meeting ordinary children from the world outside.', 'Peter Pan'),
(3, 'Snow White and The Seven Dwarfs', 'Brothers Grimm', 1854, 'Snow White lived in a castle with her stepmother that was extremely vain and had incredible powers. Every day she asked her mirror who was the prettiest them all and she always got the answer she wanted to hear. When Snow White grew up the mirror changed its answer. The stepmother was furious and she wanted to get rid of her stepdaughter.', 'Snow White and The Seven Dwarfs'),
(4, 'Rapunzel', 'Brothers Grimm', 1812, 'It is a fairy tale about the love between a young prince and a girl with long, blond hair that conquered all of the Witch’s evil intentions. They were persistent in their intentions on being happy together, and the Witch was their biggest obstacle.\r\n\r\nYears passed by, and their love grew stronger. The evil Witch tried everything to split them up, but she didn’t accomplish her goals. Even though they were separated for years, the prince managed to find his Rapunzel, and he never separated from her again. Love won again.', 'Rapunzel'),
(5, 'Cinderella', 'Charles Perrault', 1697, 'In a far away, long ago kingdom, Cinderella is living happily with her mother and father until her mother dies. Cinderella\'s father remarries a cold, cruel woman who has two daughters, Drizella and Anastasia. When the father dies, Cinderella\'s wicked stepmother turns her into a virtual servant in her own house. Meanwhile, across town in the castle, the King determines that his son the Prince should find a suitable bride and provide him with a required number of grandchildren. So the King invites every eligible maiden in the kingdom to a fancy dress ball, where his son will be able to choose his bride. Cinderella has no suitable party dress for a ball, but her friends the mice, led by Jaques and Gus, and the birds lend a hand in making her one, a dress the evil stepsisters immediately tear apart on the evening of the ball. At this point, enter the Fairy Godmother, the pumpkin carriage, the royal ball, the stroke of midnight, the glass slipper, and the rest, as they say, is fairy tale history.', 'Cinderella'),
(6, 'Rumplestiltzkin', 'Brothers Grimm', 1812, 'In order to appear superior, a miller lies to the king, telling him that his daughter can spin straw into gold. The king calls for the girl, shuts her in a tower room filled with straw and a spinning wheel, and demands she spin the straw into gold by morning or he will lock her up in a dungeon forever. When she has given up all hope, an imp-like creature appears in the room and spins the straw into gold in return for her necklace (since he only comes to people seeking a deal/trade). When next morning the king takes the girl to a larger room filled with straw to repeat the feat, the imp once again spins, in return for the girl\'s ring. On the third day, when the girl has been taken to an even larger room filled with straw and told by the king that he will marry her if she can fill this room with gold or execute her if she cannot, the girl has nothing left with which to pay the strange creature. He extracts from her a promise that she will give him her firstborn child and so he spins the straw into gold a final time.', 'Rumplestiltzkin'),
(7, 'Beauty And The Beast', 'Gabrielle de Villeneuve', 1740, 'Prince Adam was cursed to a beast form by Enchantress who saw no love in his arrogant heart for others. The one way he could break the spell was to learn to love another and earn her love in return before the last petal from his enchanted rose fell, which would bloom until his twenty-first birthday. But who could ever learn to love a beast? Ten years later, Maurice, an inventor from a nearby village, becomes lost in the woods and seeks shelter in the Beast\'s castle, the Beast imprisons him for trespassing. His daughter Belle, a bookworm who dreams of life outside her provincial village, finds him trapped in the castle and offers her place instead. The Beast accepts with a promise she\'ll remain in the castle forever. In the beginning Belle views him as nothing more than a monster, he views her as difficult and stubborn. But the two soon taste the bitter-sweetness of finding you can change and learning you were wrong.', 'Beauty And The Beast'),
(8, 'Little Red Riding Hood', 'Brothers Grimm', 1810, 'The story revolves around a girl called Little Red Riding Hood. She is named after her magical red hooded cape/cloak that she wears. The girl walks through the woods to deliver food to her sickly grandmother. Her mother had ordered her to stay strictly on the path.\r\n\r\nA Big Bad Wolf wants to eat the girl and the food in the basket. He secretly stalks her behind trees, bushes, shrubs, and patches of little and tall grass. He approaches Little Red Riding Hood, and she naïvely tells him where she is going. He suggests that the girl pick some flowers, which she does. In the meantime, he goes to the grandmother\'s house and gains entry by pretending to be the girl. He swallows the grandmother whole and waits for the girl, disguised as the grandma.', 'Little Red Riding Hood'),
(9, 'The Three Little Pigs', 'Joseph Jacob', 1880, 'Once upon a time there were three little pigs. One pig built a house of straw while the second pig built his house with sticks. They built their houses very quickly and then sang and danced all day because they were lazy. The third little pig worked hard all day and built his house with bricks. A big bad wolf saw the two little pigs while they danced and played and decided to eat them.', 'The Three Little Pigs'),
(10, 'The Little Mermaid', 'Hans Christian Andersen ', 1837, 'The Little Mermaid dwells in an underwater kingdom with her widowed father (the sea king or Mer-King), her dowager grandmother, and her five older sisters, each of whom had been born one year apart. When a mermaid turns fifteen, she is permitted to swim to the surface for the first time to glimpse the world above, and when the sisters become old enough, each of them visits the upper world one at a time every year. As each returns, the Little Mermaid listens longingly to their various descriptions of the world inhabited by human beings.\r\n\r\nWhen the Little Mermaid\'s turn comes, she rises up to the surface, watches a birthday celebration being held on a ship in honor of a handsome prince, and falls in love with him from a safe distance. A violent storm hits, sinking the boat, and the Little Mermaid saves the prince from drowning. She delivers him unconscious to the shore near a temple. Here, she waits until a young woman from the temple and her ladies in waiting find him. To her dismay, the prince never sees the Little Mermaid or even realizes that it was she who had originally saved his life.', 'The Little Mermaid'),
(11, 'Hansel and Gretel', 'Brothers Grimm', 1812, 'Hansel and Gretel are the young children of a poor woodcutter. When a great famine settles over the land, the woodcutter\'s second, abusive wife decides to take the children into the woods and leave them there to fend for themselves, so that she and her husband do not starve to death, because the kids eat too much. The woodcutter opposes the plan but finally, and reluctantly, submits to his wife\'s scheme. They were unaware that in the children\'s bedroom, Hansel and Gretel have overheard them. After the parents have gone to bed, Hansel sneaks out of the house and gathers as many white pebbles as he can, then returns to his room, reassuring Gretel that God will not forsake them.\r\nLater on they were kidnapped by a cannibalistic witch living deep in the forest in a house constructed of cake and confectionery. The two children escape with their lives by outwitting her. ', 'Hansel and Gretel'),
(12, 'Aladdin And The Wonderful Lamp', 'Brothers Grimm', 1889, 'Aladdin is a truant child, living with his mother in poverty in a Chinese town. His father is dead.\r\n\r\nOne day, an African magician approaches Aladdin while the boy plays in the streets. Claiming to be the boy\'s uncle, he recruits Aladdin to work with him, insisting he will be able to turn the boy into a wealthy merchant afterwards. Aladdin\'s mother also believes the lie, and gives her permission.\r\n\r\nAladdin agrees, and the magician leads him to a booby-trapped cave. There, he instructs Aladdin to fetch an oil lamp from within, not explaining that the cave\'s spells require the magician to receive the lamp from another. He grants the boys one of his magic rings as protection.', 'Aladdin And The Wonderful Lamp'),
(13, 'Sleeping Beauty', 'Charles Perrault', 1697, 'When a new princess is born to King Stefan and his wife, the entire kingdom rejoices. At a ceremony, three good fairies - Flora, Fauna, and Merryweather - bestow gifts of magic on the child. But an evil sorceress named Maleficent shows up, and because of a rude remark by Merryweather, she places a curse on the princess - that she will die before sunset on her 16th birthday after pricking her finger on a spinning wheel\'s spindle. Merryweather turns things around by casting a spell that will allow the princess - named Aurora - to awake from an ageless sleep with a kiss from her true love. The fairies take Aurora to their cottage in the woods to keep her away from the eyes of Maleficent, and raise her as their own child, named Briar Rose. On her 16th birthday Aurora meets Prince Phillip, the son of a king whose own kingdom will soon merge with King Stefan\'s - and falls in love. Maleficent manages to kidnap the Prince and her horrible prophecy is fulfilled when she tricks Aurora into pricking her finger on the spindle of a spinning wheel and falling asleep.', 'Sleeping Beauty'),
(14, 'Shrek', 'William Steig', 1990, 'Shrek, a green ogre who loves the solitude in his swamp, finds his life interrupted when countless fairytale characters are exiled there by the fairytale-hating Lord Farquaad of Duloc. Angry, Shrek decides to ask Farquaad to exile them elsewhere. He brings along a talking Donkey, who is the only fairytale creature willing to guide him to Duloc.\r\n\r\nMeanwhile, Farquaad tortures the Gingerbread Man for the location of the remaining fairytale creatures. His guards rush in with something he has been searching for: the Magic Mirror. He asks The Mirror if his kingdom is the fairest of them all but is told that he is not even a king. To be a king he must marry a princess, so Farquaad resolves to marry Princess Fiona, who is locked in a castle tower guarded by a dragon. He organizes a tournament wherein the winner gets the \"privilege\" of rescuing Fiona for him. Shrek and Donkey arrive during the tournament, and ignorantly defeat Farquaad\'s knights. Farquaad proclaims them the champions, and compels them under threat of death to rescue Fiona, promising to move the fairytale creatures from Shrek\'s swamp if he succeeds.', 'Shrek'),
(15, 'Alice\'s Adventures in Wonderland', 'Lewis Carroll', 1865, 'Alice is feeling bored and drowsy while sitting on the riverbank with her older sister, who is reading a book with no pictures or conversations. She then notices a White Rabbit wearing a waistcoat and pocket watch, talking to itself as it runs past. She follows it down a rabbit hole, but suddenly falls a long way to a curious hall with many locked doors of all sizes. She finds a small key to a door too small for her to fit through, but through it she sees an attractive garden. She then discovers a bottle on a table labelled \"DRINK ME\", the contents of which cause her to shrink too small to reach the key, which she has left on the table. She eats a cake with \"EAT ME\" written on it in currants as the chapter closes.', 'Alice\'s Adventures in Wonderland'),
(16, 'Goldilocks And The Three Bears', 'Robert Southey', 1837, '\"A papa bear, a mama bear, and a baby bear\" – live together in a house in the woods. Author describes them as very good-natured, trusting, harmless, tidy, and hospitable. Each of them has his own porridge bowl, chair, and bed. One day they make porridge for breakfast, but it\'s too hot to eat, so they decide to take a walk in the woods while their porridge cools. A girl named Goldilocks approaches the bears\' house. She looks through a window, peeps through the keyhole, and lifts the latch. Assured that no one is home, she walks in. She eats the baby bear\'s porridge, then settles into his chair and breaks it. She later finds the bears\' beds and falls asleep in the baby bear\'s bed. The dark end of the tale is reached when the bears return. The baby bear finds his empty bowl, his broken chair, and Goldilocks sleeping in his bed and cries, \"Somebody has been lying in my bed, and here she is!\" Goldilocks wakes up, and runs away never again to enter the house of the three bears.', 'Goldilocks And The Three Bears'),
(17, 'The Emperor\'s New Clothes', 'Hans Christian Andersen', 1837, 'Two weavers who promise an emperor a new suit of clothes that they say is invisible to those who are unfit for their positions, stupid, or incompetent. When the emperor parades before his subjects in his new clothes, no one dares to say that they do not see any suit of clothes on him for fear that they will be seen as \"unfit for their positions, stupid, or incompetent\". Finally, a child cries out, \"But he isn\'t wearing anything at all!\"', 'The Emperor\'s New Clothes'),
(18, 'The Golden Goose', 'Brothers Grimm', 1812, 'The hero is the youngest of three brothers, given the nickname Hendi. His eldest brother is sent into the forest to chop wood, fortified with a rich cake and a bottle of wine. He meets a little gray man who begs a morsel to eat and a swallow of ale but is rebuffed. The eldest brother meets an accident and is taken home. The second brother meets a similar fate. Simpleton, sent out with a biscuit cooked in the ashes of the hearth and soured beer, is generous with the little old man and is rewarded with a golden goose. The goose has been discovered within the roots of the tree chosen by the little gray man and felled by Simpleton.', 'The Golden Goose'),
(19, 'Jack the Giant Killer', 'J. Cotton and J. Eddowes', 1760, 'The tale is set during the reign of King Arthur and tells of a young Cornish farmer\'s son named Jack who is not only strong but so clever he easily confounds the learned with his penetrating wit. Jack encounters a cattle-eating giant called Cormoran (Cornish: \'The Giant of the Sea\' SWF:Kowr-Mor-An) and lures him to his death in a pit trap. Jack is dubbed \'Jack the Giant-Killer\' for this feat and receives not only the giant\'s wealth, but a sword and belt to commemorate the event. A man-eating giant named Blunderbore vows vengeance for Cormoran\'s death and carries Jack off to an enchanted castle. Jack manages to slay Blunderbore and his brother Rebecks by hanging and stabbing them. He frees three ladies held captive in the giant\'s castle.\r\n\r\nOn a trip into Wales, Jack tricks a two-headed Welsh giant into slashing his own belly open. King Arthur\'s son now enters the story and Jack becomes his servant.', 'Jack the Giant Killer'),
(20, 'Bremen Town Musicians', 'Brothers Grimm', 1819, 'In this fairytale an encounter between four animals, who believe their life is over, is described. The owner wanted to get rid of them so they decided to head their own way.\r\n\r\nA donkey, a dog, a cat and a rooster decided to go to Bremen. Since it was a long journey they got hungry and thirsty. Soon after they stumbled across an old wooden shack in which they could rest. Their story about singing began then and there.', 'Bremen Town Musicians');

-- --------------------------------------------------------

--
-- Структура таблицы `phrases`
--

CREATE TABLE `phrases` (
  `id` int(11) UNSIGNED NOT NULL,
  `quote` text NOT NULL,
  `author` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `phrases`
--

INSERT INTO `phrases` (`id`, `quote`, `author`) VALUES
(1, 'Fairy tales are more than true: not because they tell us that dragons exist, but because they tell us that dragons can be beaten.', 'Neil Gaiman'),
(2, 'If you want your children to be intelligent, read them fairy tales. If you want them to be more intelligent, read them more fairy tales.', 'Albert Einstein'),
(3, 'If I am honest I have to tell you I still read fairy-tales and I like them best of all.', 'Audrey Hepburn'),
(4, 'There is the great lesson of \'Beauty and the Beast,\' that a thing must be loved before it is lovable.', 'G.K. Chesterton'),
(5, 'When I examine myself and my methods of thought, I come to the conclusion that the gift of fantasy has meant more to me than any talent for abstract, positive thinking.', 'Albert Einstein'),
(6, 'Fear is not so difficult to understand. After all, weren\'t we all frightened as children? Nothing has changed since Little Red Riding Hood faced the big bad wolf. What frightens us today is exactly the same sort of thing that frightened us yesterday. It\'s just a different wolf. This fright complex is rooted in every individual.', 'Alfred Hitchcock'),
(7, 'The way to read a fairy tale is to throw yourself in.', 'W.H. Auden'),
(8, 'Fairy tales were not my escape from reality as a child; rather, they were my reality -- for mine was a world in which good and evil were not abstract concepts, and like fairy-tale heroines, no magic would save me unless I had the wit and heart and courage to use it widely.', 'Terri Windling'),
(9, 'In a utilitarian age, of all other times, it is a matter of grave importance that fairy tales should be respected.', 'Charles Dickens'),
(10, 'Some day you will be old enough to start reading fairy tales again.', 'C.S. Lewis'),
(11, 'But all fairytales have rules, and perhaps it’s their rules that actually distinguish one fairytale from the other. These rules never need to be understood. They only need to be followed. If not, what they promise won’t come true.', 'Jostein Gaarder'),
(12, 'But all fairytales have rules, and perhaps it is their rules that actually distinguish one fairytale from the other. These rules never need to be understood. They only need to be followed. If not, what they promise won’t come true.', 'Jostein Gaarder'),
(13, 'If I am honest I have to tell you I still read fairy-tales and I like them best of all.', 'Audrey Hepburn');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `fairy`
--
ALTER TABLE `fairy`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `phrases`
--
ALTER TABLE `phrases`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `fairy`
--
ALTER TABLE `fairy`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT для таблицы `phrases`
--
ALTER TABLE `phrases`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
