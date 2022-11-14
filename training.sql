/*
 Navicat Premium Data Transfer

 Source Server         : mysql-local
 Source Server Type    : MySQL
 Source Server Version : 100136
 Source Host           : localhost:3306
 Source Schema         : training

 Target Server Type    : MySQL
 Target Server Version : 100136
 File Encoding         : 65001

 Date: 14/11/2022 12:53:02
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (1, 'Áo');
INSERT INTO `category` VALUES (2, 'Đầm');
INSERT INTO `category` VALUES (3, 'Váy');
INSERT INTO `category` VALUES (4, 'Quần');

-- ----------------------------
-- Table structure for hibernate_sequence
-- ----------------------------
DROP TABLE IF EXISTS `hibernate_sequence`;
CREATE TABLE `hibernate_sequence`  (
  `next_val` bigint NULL DEFAULT NULL
) ENGINE = MyISAM CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = FIXED;

-- ----------------------------
-- Records of hibernate_sequence
-- ----------------------------
INSERT INTO `hibernate_sequence` VALUES (4);

-- ----------------------------
-- Table structure for image_product
-- ----------------------------
DROP TABLE IF EXISTS `image_product`;
CREATE TABLE `image_product`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 153 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of image_product
-- ----------------------------
INSERT INTO `image_product` VALUES (1, 1, 'https://product.hstatic.net/200000037048/product/z3865528447083_830f73c988fe95f4e560dd820f8e9ed1_e9e06248169743fe99e93452db5ea635_master.jpg');
INSERT INTO `image_product` VALUES (2, 1, 'https://product.hstatic.net/200000037048/product/z3865528393941_c6f0cecb57ca92bc5f6c5e7fb4c9017b_3b1cec79c1954ce992d98ac81a9fbe50_master.jpg');
INSERT INTO `image_product` VALUES (3, 1, 'https://product.hstatic.net/200000037048/product/z3865528204121_2e523dac9a56836133b0a41a9c9f8405_76dd020e26ba4867ae5a57a865c280e8_master.jpg');
INSERT INTO `image_product` VALUES (4, 1, 'https://product.hstatic.net/200000037048/product/z3865528267034_93ebffc83b0514ed0052dba12329cf50_07b4c3a1b37a4a299b3ffb4e217cc32d_master.jpg');
INSERT INTO `image_product` VALUES (5, 1, 'https://product.hstatic.net/200000037048/product/z3865528384284_4bb494a655a4b4accccd713b42c76ad0_2c628ff1986c4360b6d63ebac551faaa_master.jpg');
INSERT INTO `image_product` VALUES (6, 1, 'https://product.hstatic.net/200000037048/product/z3865528434189_dea97fb37be4ffd121ef9399ba1878ff_bbe83ccb9a304f96adb65a121ade0cf2_master.jpg');
INSERT INTO `image_product` VALUES (7, 1, 'https://product.hstatic.net/200000037048/product/z3865528101666_55379920a56e74c352d8db5192c15c98_f18c080aeb9c4041a5997ac4a294fae5_master.jpg');
INSERT INTO `image_product` VALUES (8, 1, 'https://product.hstatic.net/200000037048/product/z3865528485567_38284a47cb256d6928018e5443d2f01c_7f0fb699a2664457958adf5d2f85d752_master.jpg');
INSERT INTO `image_product` VALUES (9, 2, 'https://product.hstatic.net/200000037048/product/z3854339302070_77557c29f78b967b87e21630c9224deb_2e071f51588048c3b8d1c9b8853f274d_master.jpg');
INSERT INTO `image_product` VALUES (10, 2, 'https://product.hstatic.net/200000037048/product/z3854339233532_d575c4d2934191885a42a0578ec5cfb4_e95cb936be154d549bf7e9d5b8a6616a_master.jpg');
INSERT INTO `image_product` VALUES (11, 2, 'https://product.hstatic.net/200000037048/product/z3854339068989_bf4d7e787597b1cb5c9f6d0bfad88715_534e331e55514f6a94feb1ead6a5f1e7_master.jpg');
INSERT INTO `image_product` VALUES (12, 2, 'https://product.hstatic.net/200000037048/product/z3854338997790_095e41e26d93ea384b4b4e19271a18cd_dcfcc98e68284cebb35497fc0427ab5a_master.jpg');
INSERT INTO `image_product` VALUES (13, 2, 'https://product.hstatic.net/200000037048/product/z3854339171872_5d4c097c471b8797b56885f0b58a20e8_c41b0bc06e604fba9d98a020fd6d1cb6_master.jpg');
INSERT INTO `image_product` VALUES (14, 2, 'https://product.hstatic.net/200000037048/product/z3854339331166_270e96a09d4a382d7aee2b5bb60a2c87_f806bfda019d4afc8551dd2f82846c27_master.jpg');
INSERT INTO `image_product` VALUES (15, 2, 'https://product.hstatic.net/200000037048/product/z3854339789306_1d6ea7dc0fcba87f816ba5e7ce32b452_603db476e54c45cf91c4aedf7ba6b9f9_master.jpg');
INSERT INTO `image_product` VALUES (16, 2, 'https://product.hstatic.net/200000037048/product/z3854339838742_be47d256eb53e456a1659fdd518dd6e3_f29aea8d2110409cab68e895ece594b4_master.jpg');
INSERT INTO `image_product` VALUES (17, 2, 'https://product.hstatic.net/200000037048/product/z3854339916583_7a53dffaa7962fb3038bd13dab7988d9_2733c54060d846fa959acd806ba05622_master.jpg');
INSERT INTO `image_product` VALUES (18, 3, 'https://product.hstatic.net/200000037048/product/z3852143346371_e96d010a7ce1cc93ce5e2c74448baa26_366bbbe27a8747eaac538f3a1f302569_master.jpg');
INSERT INTO `image_product` VALUES (19, 3, 'https://product.hstatic.net/200000037048/product/z3852143400977_99bc45cbea0a2fd50cb4db474419831d_9ca9d25bcb9947fb890f3bd15fd5b636_master.jpg');
INSERT INTO `image_product` VALUES (20, 3, 'https://product.hstatic.net/200000037048/product/z3852143112774_6fa836f9d8700bd4c51d7c12577359a6_01b084545e2f4817adeca512b5539884_master.jpg');
INSERT INTO `image_product` VALUES (21, 3, 'https://product.hstatic.net/200000037048/product/z3852143205049_1fddb6ee3a6e12e8b6aea7e411e64358_2c45782fcdee4e87b6882b1ca2deebc0_master.jpg');
INSERT INTO `image_product` VALUES (22, 3, 'https://product.hstatic.net/200000037048/product/z3852143489751_a476ec42e369dadc0db098e8ede3f321_cd7f0ecaa0eb4866aa9ad6ee3d3a7ebb_master.jpg');
INSERT INTO `image_product` VALUES (23, 3, 'https://product.hstatic.net/200000037048/product/z3852143504839_bbed31e389cd7e461a04f0e60e3bd4e5_d56ebaeec17b486aac3f04f53abbc4f4_master.jpg');
INSERT INTO `image_product` VALUES (24, 3, 'https://product.hstatic.net/200000037048/product/z3852143061653_cc261251b59470829adfae582e8dcba3_09975f24cf3e4dbfa376a517e4a97e0b_master.jpg');
INSERT INTO `image_product` VALUES (25, 3, 'https://product.hstatic.net/200000037048/product/z3852143372908_23a580e91109c5ce6cd446742a0dc7ae_67cb5620315848a8ad358566afe9fe0c_master.jpg');
INSERT INTO `image_product` VALUES (26, 4, 'https://product.hstatic.net/200000037048/product/z3850177474329_aeff58fc15fd03421cc1fd0913a30df9_8faa987249e34e93b727b567f3cef916_master.jpg');
INSERT INTO `image_product` VALUES (27, 4, 'https://product.hstatic.net/200000037048/product/z3850177424610_e2fa21664d5a8a48a0a8f7fde565b35c_4914caa21b904eb8b9a5feb04d0d2068_master.jpg');
INSERT INTO `image_product` VALUES (28, 4, 'https://product.hstatic.net/200000037048/product/z3850177440955_e5bbf027ff3f6de7367a91a26d165b60_c94686cbef4c4431a6624567e8de7f2a_master.jpg');
INSERT INTO `image_product` VALUES (29, 4, 'https://product.hstatic.net/200000037048/product/z3850177440957_eb372e55913f2f82127e92d13b368cd9_cdf948f3316d4a159b7d9b0836d9f590_master.jpg');
INSERT INTO `image_product` VALUES (30, 4, 'https://product.hstatic.net/200000037048/product/z3850177450521_7b0d1b275c4c09d5a3613f55fb8a6654_ce1f0a07e862435295f64ca88563d57e_master.jpg');
INSERT INTO `image_product` VALUES (31, 4, 'https://product.hstatic.net/200000037048/product/z3850177450524_b3cf8a2863df5ad590dfe757233b1574_1d90696e374a402991abab1b4decfefd_master.jpg');
INSERT INTO `image_product` VALUES (32, 5, 'https://product.hstatic.net/200000037048/product/z3849510102894_70b6c479015cc44bfff1f2559ba2fdcb_1d37653831e84999b328d23ade5662f8_master.jpg');
INSERT INTO `image_product` VALUES (33, 5, 'https://product.hstatic.net/200000037048/product/z3849510121260_b02485eed4b7e210857a93ff715db9e2_0f52a13b7a5b4315985e05db49cf3deb_master.jpg');
INSERT INTO `image_product` VALUES (34, 5, 'https://product.hstatic.net/200000037048/product/z3849510089307_a42fee5fab09e9cdfa5f37232260aa7d_9def8bdf03b9401085f412201d950a78_master.jpg');
INSERT INTO `image_product` VALUES (35, 5, 'https://product.hstatic.net/200000037048/product/z3849510089224_b93d28e0533c1fba7df37d3a02cb1207_d2cc68344cf549018644dd02c396ea64_master.jpg');
INSERT INTO `image_product` VALUES (36, 5, 'https://product.hstatic.net/200000037048/product/z3849510040889_0d0e1aeba216bbaf09c6a3dcb1f75ca2_7c7a4d6d28a84d99963ccc3d207cea9d_master.jpg');
INSERT INTO `image_product` VALUES (37, 5, 'https://product.hstatic.net/200000037048/product/z3849510046957_f06c4f30a6e5e1c3c8a7f00bc42a5a66_f06e89ffb8874495b82feea4a6803066_master.jpg');
INSERT INTO `image_product` VALUES (38, 5, 'https://product.hstatic.net/200000037048/product/z3849509976130_c00a0d57bdfdca3bccec5c83ea4d83ca_76359b4c3f81460a98b7ac0b3b262905_master.jpg');
INSERT INTO `image_product` VALUES (39, 5, 'https://product.hstatic.net/200000037048/product/z3849510024256_e8438ce1bfab20473a7ac47e65b433b9_26cec0f6a81445c6ad993e26d6b1628a_master.jpg');
INSERT INTO `image_product` VALUES (40, 5, 'https://product.hstatic.net/200000037048/product/z3849510889785_bcc6a57eaa82a2f54546ec7794fcb290_b785110306fe4f8790c518c79f7f64a8_master.jpg');
INSERT INTO `image_product` VALUES (41, 5, 'https://product.hstatic.net/200000037048/product/z3849510909929_fc30db7b6e1010b5f439d23f065ed4e7_d03e1ead19ba4ca8a6f049be25f556fb_master.jpg');
INSERT INTO `image_product` VALUES (42, 5, 'https://product.hstatic.net/200000037048/product/z3849510931206_6fa793cb6eca19927204e038704c8fd3_4d29c16d168a451b9732f5759b5fc35a_master.jpg');
INSERT INTO `image_product` VALUES (43, 6, 'https://product.hstatic.net/200000037048/product/z3848616073572_bef5f1d001d7f5cebcedd2cd241aa507_8247896eada340e6b7e7aee9cc24c37f_master.jpg');
INSERT INTO `image_product` VALUES (44, 6, 'https://product.hstatic.net/200000037048/product/z3848616134336_f7d2bb056447491d3b0fa9f2dc605db3_0471e5bb1dab41fa9093d97dfbe09b71_master.jpg');
INSERT INTO `image_product` VALUES (45, 6, 'https://product.hstatic.net/200000037048/product/z3848616025119_620a6887e3a2dda6f9366b45d8406056_503f61d0979c4302b606c97274a82516_master.jpg');
INSERT INTO `image_product` VALUES (46, 6, 'https://product.hstatic.net/200000037048/product/z3848616048143_b5448b878502f4b07badc317e44c7a60_9c371955e3284162b21345173a1f5714_master.jpg');
INSERT INTO `image_product` VALUES (47, 6, 'https://product.hstatic.net/200000037048/product/z3848616093311_ecf5ad75297e449f1cc131b2b950bb6c_eda7f2664625416689e5f04a35b91edb_master.jpg');
INSERT INTO `image_product` VALUES (48, 6, 'https://product.hstatic.net/200000037048/product/z3848616114650_6cd04a03a9eac34f4af7ae266a6d8108_c43c1e19e25349298f9db9912a6f6def_master.jpg');
INSERT INTO `image_product` VALUES (49, 6, 'https://product.hstatic.net/200000037048/product/z3848616123357_4a48aa5a3df56289defbd5c5ef7648a7_5bf58e8c545e4a309a6031dcb9495727_master.jpg');
INSERT INTO `image_product` VALUES (50, 6, 'https://product.hstatic.net/200000037048/product/z3848616760623_2362b3cdbd05490512a4a8939ea1c679_8eb1b5b8ca34443c9530e5dcffe8c507_master.jpg');
INSERT INTO `image_product` VALUES (51, 6, 'https://product.hstatic.net/200000037048/product/z3848616785043_5b5800d7a274640f5f3862ed4e5bb713_2095bc457bc44c22b7b3f0bce29a82fd_master.jpg');
INSERT INTO `image_product` VALUES (52, 6, 'https://product.hstatic.net/200000037048/product/z3848616806458_bbc97e25a62fe5c4a3d0f9e4492ca3d7_e871e526056a4dbbb5ab87aaa3126b54_master.jpg');
INSERT INTO `image_product` VALUES (53, 15, 'https://product.hstatic.net/200000037048/product/z3620517501835_2d6415b056a18b6439b1d74cf778754a_9e9d2dbc7b1f456293454b6b1354be9a_master.jpg');
INSERT INTO `image_product` VALUES (54, 15, 'https://product.hstatic.net/200000037048/product/z3594893053112_6eea3f3d5414ab20c4eec417c19074c6_51e11f26c7c8473b960031677ed42b18_master.jpg');
INSERT INTO `image_product` VALUES (55, 15, 'https://product.hstatic.net/200000037048/product/z3594893053223_7777087294a23fdbb622a1268f0e24d8_43f1401e73a14c51a94ae3778a09caab_master.jpg');
INSERT INTO `image_product` VALUES (56, 15, 'https://product.hstatic.net/200000037048/product/z3594893053429_e3fb95834ba4fb04846173b9b7e917d3_6108c2848c2a4fb382961fc2090c4bbd_master.jpg');
INSERT INTO `image_product` VALUES (57, 15, 'https://product.hstatic.net/200000037048/product/z3594893053360_ba63edf31ede970492a4d81f76a39fe0_26e2d38d008448db83a149fad62fef66_master.jpg');
INSERT INTO `image_product` VALUES (58, 15, 'https://product.hstatic.net/200000037048/product/z3594893053375_e88aa9fa9727fefffca22ab72daa2cce_de6b0c78f313403d965294667f20c035_master.jpg');
INSERT INTO `image_product` VALUES (59, 15, 'https://product.hstatic.net/200000037048/product/z3594893053148_0f4025b900d4a8015b4ed484b70a27b3_c8240c48878a47509d13f5d762c0f70c_master.jpg');
INSERT INTO `image_product` VALUES (60, 15, 'https://product.hstatic.net/200000037048/product/z3620517516726_eed0b8255b6f2e472fa3cb6e73a5bbbb_4df33aa1ebd64a93aef291ff89c11da1_master.jpg');
INSERT INTO `image_product` VALUES (61, 15, 'https://product.hstatic.net/200000037048/product/z3620517519121_866407882038d5c292d3a03f3b84ce39_86b7c12ffc264addb162283627424513_master.jpg');
INSERT INTO `image_product` VALUES (62, 15, 'https://product.hstatic.net/200000037048/product/z3620517533712_88cdabeacfaa8a0994549623f50a5f1c_d35e539ca4074a1a96b0b87ed44ae0aa_master.jpg');
INSERT INTO `image_product` VALUES (63, 15, 'https://product.hstatic.net/200000037048/product/z3620517509058_041e454b36be13e56029741ebb90f712_30c0f47a54574e73a5061866b4c36ad0_master.jpg');
INSERT INTO `image_product` VALUES (64, 15, 'https://product.hstatic.net/200000037048/product/z3620517542459_34be96960e3300772f0f796436d06c6c_ba5dc25c1e0f41ef965f83752207d59d_master.jpg');
INSERT INTO `image_product` VALUES (65, 7, 'https://product.hstatic.net/200000037048/product/z3850244497587_0d9bad12e96c69910ead6e6015e4e408_eb51c215e29c4434b0c200bdb4af71a9_master.jpg');
INSERT INTO `image_product` VALUES (66, 7, 'https://product.hstatic.net/200000037048/product/z3850244501735_b7176c77fd026fc1c31670e66ec6ae6e_c1937be3244944de888b560e4e1b29a9_master.jpg');
INSERT INTO `image_product` VALUES (67, 8, 'https://product.hstatic.net/200000037048/product/z3839560379897_7070143e1eddf45983554fd28e9b5928_9069a6b095b6463d8b866ff0d68c3d69_master.jpg');
INSERT INTO `image_product` VALUES (68, 8, 'https://product.hstatic.net/200000037048/product/z3839560568886_c0e98a166da6542f9d250c838f4d3fb1_2ec8c69409574b648c0f6e3baa906ee7_master.jpg');
INSERT INTO `image_product` VALUES (69, 8, 'https://product.hstatic.net/200000037048/product/z3839560527333_91c498304d960b9c85fdb74003ae19cc_4c7795359ffb4d69a799a20dcbc9453f_master.jpg');
INSERT INTO `image_product` VALUES (70, 8, 'https://product.hstatic.net/200000037048/product/z3839560555873_2f0405b999e451505f4f7e4fcdc46561_195f788720014047861a8bbf6b2a5b79_master.jpg');
INSERT INTO `image_product` VALUES (71, 8, 'https://product.hstatic.net/200000037048/product/z3839560684957_dabda8586989a2e35ef4827533807d41_0d9ab0e5c5644219a978e281e193f593_master.jpg');
INSERT INTO `image_product` VALUES (72, 8, 'https://product.hstatic.net/200000037048/product/z3839560752089_3117d77902aca8183642a577376e21a0_95cf0facacee4e288a732d61516a9258_master.jpg');
INSERT INTO `image_product` VALUES (73, 8, 'https://product.hstatic.net/200000037048/product/z3839561735366_2d8f770ecc1aed8997cfe6c68e1b17c7_53323b5a879c414aa6ad4b733ad012f3_master.jpg');
INSERT INTO `image_product` VALUES (74, 8, 'https://product.hstatic.net/200000037048/product/z3839561785619_4db799cc0b51dbad28d4a509319561fe_-_copy_0fb63ebaaa0f4b5d8162328394bb5812_master.jpg');
INSERT INTO `image_product` VALUES (75, 8, 'https://product.hstatic.net/200000037048/product/z3839561798260_2d4215d94bf5435c8ea29baf3addab63_-_copy_6eae415d76ba4f4f8b95e3b61b9e19b6_master.jpg');
INSERT INTO `image_product` VALUES (76, 9, 'https://product.hstatic.net/200000037048/product/z3836832053656_785deadc4a95b2bb6be0d5936d0c339c_35c72b29467e4dc385928feba8dc131b_master.jpg');
INSERT INTO `image_product` VALUES (77, 9, 'https://product.hstatic.net/200000037048/product/z3836832034350_9fcdc15136dde8c7a5585b3f8d93d5c6_43ed4d7f932e48789a9e8dcb21b023d3_master.jpg');
INSERT INTO `image_product` VALUES (78, 9, 'https://product.hstatic.net/200000037048/product/z3836832042156_05d7c1b7e70c50a05234187a531a8883_e949975c5f0443758e8ecb3c681eddc4_master.jpg');
INSERT INTO `image_product` VALUES (79, 9, 'https://product.hstatic.net/200000037048/product/z3836832043676_d7e23e89ece7f2c8a2a1bdd8496e3670_d2a20521aa444970ba0f5a1b39ff8ea0_master.jpg');
INSERT INTO `image_product` VALUES (80, 9, 'https://product.hstatic.net/200000037048/product/z3836832049424_dd94e818ba6ceb4a048e55bcb7324aea_559713785003421cb4cc8d5fa1f456bb_master.jpg');
INSERT INTO `image_product` VALUES (81, 10, 'https://product.hstatic.net/200000037048/product/z3837454551631_3337c273b8381c250a4906d34742e506_865f0522b668482f85f5b90efcfe7953_master.jpg');
INSERT INTO `image_product` VALUES (82, 10, 'https://product.hstatic.net/200000037048/product/z3837454517215_d0271c30e221d12d54c8762ceb673a8f_18ef29bd503a4892a4d53f0b5138c647_master.jpg');
INSERT INTO `image_product` VALUES (83, 10, 'https://product.hstatic.net/200000037048/product/z3837454530880_5bb9195406bddf7cc25c5429d745b21b_dd7b4f27e05c4e1689f39a6f943b0996_master.jpg');
INSERT INTO `image_product` VALUES (84, 10, 'https://product.hstatic.net/200000037048/product/z3837454497997_7f88ba4851cd62802af74884ebe10c61_1ed7818aa9b54201bc7166e69896c94b_master.jpg');
INSERT INTO `image_product` VALUES (85, 10, 'https://product.hstatic.net/200000037048/product/z3837454503481_ccbe06608b4ecd34a0032fb351652396_43ef559e030b402c952889c86996af41_master.jpg');
INSERT INTO `image_product` VALUES (86, 10, 'https://product.hstatic.net/200000037048/product/z3837454511819_875f3403bf23cce863b53f1dc905cd4b_8bad81c09b264c23a5cb2ba8344b0e2e_master.jpg');
INSERT INTO `image_product` VALUES (87, 10, 'https://product.hstatic.net/200000037048/product/z3837455251364_b48a084d77489363ad85988fe8104c62_39e8ede79e4243338cbed4ed91ee3e4f_master.jpg');
INSERT INTO `image_product` VALUES (88, 10, 'https://product.hstatic.net/200000037048/product/z3837455253536_092366ba815b3fe26201eb3fe76b3c7f_3252b832295642e8b7a9e8f81fdcf4ba_master.jpg');
INSERT INTO `image_product` VALUES (89, 11, 'https://product.hstatic.net/200000037048/product/z3679474749367_68c09215e15b4305ed1febcd766cd5bd_3f6064d82c6a455184dffea843ce1afc_master.jpg');
INSERT INTO `image_product` VALUES (90, 11, 'https://product.hstatic.net/200000037048/product/z3679474758832_411b7c738127ff5bb0e14dbf2745f434_484c6849306843b39dba1eecffca9c59_master.jpg');
INSERT INTO `image_product` VALUES (91, 11, 'https://product.hstatic.net/200000037048/product/z3679474751038_193d2de8c7aadd23cf470c5cae2a49ef_6292d5ab57e5479280a0b73b64dbcabd_master.jpg');
INSERT INTO `image_product` VALUES (92, 11, 'https://product.hstatic.net/200000037048/product/z3679474755522_c7745b840ad259979a5a3c4b6166043b_356ef402183b4e3592aa94c4591a723f_master.jpg');
INSERT INTO `image_product` VALUES (93, 11, 'https://product.hstatic.net/200000037048/product/z3679474751536_d8a5e7bd705c50a8e0405604e92c33b3_2113853c32b64543b1b03775056021af_master.jpg');
INSERT INTO `image_product` VALUES (94, 11, 'https://product.hstatic.net/200000037048/product/z3679474753775_c056347b4a81951a61820f1d55536145_2b9fe792dcb94f97b37d82e5ff2b4759_master.jpg');
INSERT INTO `image_product` VALUES (95, 11, 'https://product.hstatic.net/200000037048/product/z3679474753777_894195b52cede4fc7d5b207b7cf9417c_90485500aaf9437cbbb3b0c26920dd0e_master.jpg');
INSERT INTO `image_product` VALUES (96, 12, 'https://product.hstatic.net/200000037048/product/z3634215740381_6e3950aa7fdd1abd4c4dcf309ee71808_f09b6c6583684a4ea6464c90a5eb35f2_master.jpg');
INSERT INTO `image_product` VALUES (97, 12, 'https://product.hstatic.net/200000037048/product/z3634215758221_7460c541dface7ba63886ed5e58d243a_e6b43834e6a844f484188ffefe3138f6_master.jpg');
INSERT INTO `image_product` VALUES (98, 12, 'https://product.hstatic.net/200000037048/product/z3634215789169_3716fca8f9f9e7523a1a41a85afdb68a_c8aa41de47bd453fbf9d01872883ff2e_master.jpg');
INSERT INTO `image_product` VALUES (99, 12, 'https://product.hstatic.net/200000037048/product/z3634215776403_7313f0617ba5ee8d544ab11957c30f18_9db47001084742c191ec1faf8d6085fb_master.jpg');
INSERT INTO `image_product` VALUES (100, 12, 'https://product.hstatic.net/200000037048/product/z3634215751773_0927e12fe1757517da5dda3d4470438e_6698839354f14316a0db4b98bd0eda43_master.jpg');
INSERT INTO `image_product` VALUES (101, 12, 'https://product.hstatic.net/200000037048/product/z3634215761145_1c0310b55ccb63a3ae8df6ff6458c2ff_41406fb03cc14c99b633963f1d19d8ae_master.jpg');
INSERT INTO `image_product` VALUES (102, 12, 'https://product.hstatic.net/200000037048/product/z3634215765740_d08f604b9974b17375d95483b3e246eb_ef00e7d7dece42f1826bf23d4ae23387_master.jpg');
INSERT INTO `image_product` VALUES (103, 13, 'https://product.hstatic.net/200000037048/product/z3650994243728_05f1c83c2211a9fc5327d9d039a7964e_5c5d2d8dd25343e683a70fcc01bb2cf7_master.jpg');
INSERT INTO `image_product` VALUES (104, 13, 'https://product.hstatic.net/200000037048/product/z3626003440346_a3cf267ac534e4e59b74440679c61f05_fa9bc5022af54ceb9fd737727c9dd804_master.jpg');
INSERT INTO `image_product` VALUES (105, 13, 'https://product.hstatic.net/200000037048/product/z3626003456009_24df2ac8503d5edd060cd9bd71c5e5f1_707743f5bd1c4f8eb6c4602baa10b915_master.jpg');
INSERT INTO `image_product` VALUES (106, 13, 'https://product.hstatic.net/200000037048/product/z3626003456022_b55733e63f97e283969faa875c3f31d5_986c5343bca34b4f9637cd3ebf47ea69_master.jpg');
INSERT INTO `image_product` VALUES (107, 13, 'https://product.hstatic.net/200000037048/product/z3626003469460_d28c1fdfce6542e7e3c5bce48fd15d4f_8e64757fec544c0da4aa7857ab98162f_master.jpg');
INSERT INTO `image_product` VALUES (108, 13, 'https://product.hstatic.net/200000037048/product/z3626002989843_6dc2be9eaf68f7fa18748bb3040bf996_ee2ded8f453e49aa84c983706786c3a6_master.jpg');
INSERT INTO `image_product` VALUES (109, 13, 'https://product.hstatic.net/200000037048/product/z3650994226895_23d74e0469f1dc89dcd892cfa9843924_861a992569dd4b6fb97e7cb069145569_master.jpg');
INSERT INTO `image_product` VALUES (110, 13, 'https://product.hstatic.net/200000037048/product/z3650994269331_249fc1435271195c507031d1c7173100_c871ad38c89549fda2191530943e05e3_master.jpg');
INSERT INTO `image_product` VALUES (111, 13, 'https://product.hstatic.net/200000037048/product/z3650994289954_e22db8305536143355962b5f26959fe0_18c1fe0a994047a5a1155f1a9ff135ba_master.jpg');
INSERT INTO `image_product` VALUES (112, 13, 'https://product.hstatic.net/200000037048/product/z3650994314168_0d78ef6207ad2dc64b6fd4bbd63ad731_dc5d0e1256a54a5486ddfa0e27c7ff57_master.jpg');
INSERT INTO `image_product` VALUES (113, 14, 'https://product.hstatic.net/200000037048/product/1_7911c7a1ccee4eac9d0adf76a3493159_master.jpg');
INSERT INTO `image_product` VALUES (114, 14, 'https://product.hstatic.net/200000037048/product/z3608987273449_a7a1ecc9c6aabd22d380469139d6862a_eb400d24c6f8450d93405596e6e94e8c_master.jpg');
INSERT INTO `image_product` VALUES (115, 14, 'https://product.hstatic.net/200000037048/product/z3608987273448_bff9f3cf112dae7a994b28d75bc70e05_e366c0e8d938428997698b36b67840b3_master.jpg');
INSERT INTO `image_product` VALUES (116, 14, 'https://product.hstatic.net/200000037048/product/z3608987269547_55e982036824cc0ecf4f4a15b5aa0848_49e9bfba12dc418f83b80726255c11ef_master.jpg');
INSERT INTO `image_product` VALUES (117, 14, 'https://product.hstatic.net/200000037048/product/z3608987271592_82f1c68f9c1f0a8b560715429ecf31c6_ede3e13dc3b74a6b98e18bf4a1f9db40_master.jpg');
INSERT INTO `image_product` VALUES (118, 14, 'https://product.hstatic.net/200000037048/product/z3608987271594_c264169739d998c6d9c5a06095f935bf_3d2e148a8ed84570b602bbc9a45b77af_master.jpg');
INSERT INTO `image_product` VALUES (119, 14, 'https://product.hstatic.net/200000037048/product/z3608987271594_c264169739d998c6d9c5a06095f935bf_3d2e148a8ed84570b602bbc9a45b77af_master.jpg');
INSERT INTO `image_product` VALUES (120, 14, 'https://product.hstatic.net/200000037048/product/z3651112268695_1a93bad7c0e7b734e83850a19a1ae59d_6f9f3543d1324e7980734048393a680c_master.jpg');
INSERT INTO `image_product` VALUES (121, 14, 'https://product.hstatic.net/200000037048/product/z3651112289993_d7478be4d44e5aa9965b5ed85800866c_47b9572261434b9281c9ff44f38b7ed7_master.jpg');
INSERT INTO `image_product` VALUES (122, 14, 'https://product.hstatic.net/200000037048/product/z3651112273029_d71c3d662d5dfe5db9310c1cb0d625fa_59f7d8b796174e07a68a8afca0436d2c_master.jpg');
INSERT INTO `image_product` VALUES (123, 14, 'https://product.hstatic.net/200000037048/product/z3651112277430_43e687d3e3bf42c772be0a1b3dda85af_7c4919b19a7e4dacb272749441be4519_master.jpg');
INSERT INTO `image_product` VALUES (124, 14, 'https://product.hstatic.net/200000037048/product/z3625982795814_a3f96fae62f58717b8a5b62b9ef742b8_a8dfe0b4cb0641e6b114a53ecbdf511c_master.jpg');
INSERT INTO `image_product` VALUES (125, 14, 'https://product.hstatic.net/200000037048/product/z3625982791280_f5e59250f7027704887549ac3ee78c82_322f075034cf418f8f4b2e5a4f9754ab_master.jpg');
INSERT INTO `image_product` VALUES (126, 14, 'https://product.hstatic.net/200000037048/product/z3608987263333_5b6151cd2fec53d0a613473976c9c8f4_b99da3c44bda490bacfcbbd3252a4591_master.jpg');
INSERT INTO `image_product` VALUES (128, 16, 'https://product.hstatic.net/200000037048/product/z3630733818886_ea18ec0cab30de1eb29917461af9979c_9851aa5817ce4812b136219c901e012a_master.jpg');
INSERT INTO `image_product` VALUES (129, 16, 'https://product.hstatic.net/200000037048/product/z3591682201233_acf52db685eb6ac3be0d864b7f826032_bccbe99103ac426aaa0d03a5a1a5c0fc_master.jpg');
INSERT INTO `image_product` VALUES (130, 16, 'https://product.hstatic.net/200000037048/product/z3591682198803_767f89158e1671677416c82f84994a67_5a6e098a07964b018887ac6f1384de04_master.jpg');
INSERT INTO `image_product` VALUES (131, 16, 'https://product.hstatic.net/200000037048/product/z3591682203038_888ae1d3347ba0957595d1a90590aacc_cf003324f8254c72ba5f31c1ce16dab7_master.jpg');
INSERT INTO `image_product` VALUES (132, 16, 'https://product.hstatic.net/200000037048/product/z3591682197343_2467e401aee00dacd9c8c120419f1840_7d22e7ae77f54ef6ad53f61dd7583612_master.jpg');
INSERT INTO `image_product` VALUES (133, 16, 'https://product.hstatic.net/200000037048/product/z3591682202204_45649d25edbf47004f66aa370bb43633_ef2513d752eb4c7e80fa3c954097f267_master.jpg');
INSERT INTO `image_product` VALUES (134, 16, 'https://product.hstatic.net/200000037048/product/z3591682204831_8a615810d64d5582ded639ec14f30df9_61bb44d09a7a412a8bfc4a4999c188b7_master.jpg');
INSERT INTO `image_product` VALUES (135, 16, 'https://product.hstatic.net/200000037048/product/z3630733839435_a74aeccd7bab3f3a7b8147f69220a669_a2ef299a02cd4b97b5c317ffde5c75a1_master.jpg');
INSERT INTO `image_product` VALUES (136, 16, 'https://product.hstatic.net/200000037048/product/z3630733854921_d63a0569a0a1ecd436876d2ab98d547f_878613c453024b51bd40d3f4d68f0177_master.jpg');
INSERT INTO `image_product` VALUES (137, 16, 'https://product.hstatic.net/200000037048/product/z3630733888127_f017295cd28e42c3293cd2b7fcbee192_ab9bccaf291f488f98100dcd96cb7b31_master.jpg');
INSERT INTO `image_product` VALUES (138, 16, 'https://product.hstatic.net/200000037048/product/z3630733874074_daf48681cf85a7b25218c10e0269c166_3aea5108dd604370a897d53eac94232f_master.jpg');
INSERT INTO `image_product` VALUES (139, 17, 'https://product.hstatic.net/200000037048/product/z3558911492635_840822efe88d6728c40c257ba2d72c68_ba4c0a03b79b4321b8b3441c0c733c53_master.jpg');
INSERT INTO `image_product` VALUES (140, 17, 'https://product.hstatic.net/200000037048/product/z3558906967320_519dd54424b3c7ff82281c949229700f_364243bed550483d86c7e2d1357ce454_master.jpg');
INSERT INTO `image_product` VALUES (141, 18, 'https://product.hstatic.net/200000037048/product/z3672230529806_6e2b8887ef66009e34229d8188c4d07d_3b32a5817fa44cde9c679c6086e9d888_master.jpg');
INSERT INTO `image_product` VALUES (142, 18, 'https://product.hstatic.net/200000037048/product/z3626198678214_0084d62716c817479d3217adae8489aa_3cc32bac79804f1da6a44abb0571e281_master.jpg');
INSERT INTO `image_product` VALUES (143, 18, 'https://product.hstatic.net/200000037048/product/z3626198791245_d8a888e807412944dc907ea903abef9e_2a67919ae3f34ce89e1b2a69c0d06bdf_master.jpg');
INSERT INTO `image_product` VALUES (144, 18, 'https://product.hstatic.net/200000037048/product/z3626198766395_e05c6b9a107f2bc96ee06f8acde1d20a_3eecca03c52a4a5e806e4c6c630dbe87_master.jpg');
INSERT INTO `image_product` VALUES (145, 18, 'https://product.hstatic.net/200000037048/product/z3626198783460_4f2b0f4c2af4e88ad961ac1e3c102c94_171b170f4b4b4d57b39ecc1f134fa00e_master.jpg');
INSERT INTO `image_product` VALUES (146, 18, 'https://product.hstatic.net/200000037048/product/z3626198807612_91070bd3f9546e5019807ebd5fa13c65_443738b2c288468293e587f26f698ab1_master.jpg');
INSERT INTO `image_product` VALUES (147, 18, 'https://product.hstatic.net/200000037048/product/z3626198797881_072e1b90d963159270e7e5d3f3b50bcf_ffc1a96540984275a20a04f4387a3204_master.jpg');
INSERT INTO `image_product` VALUES (148, 18, 'https://product.hstatic.net/200000037048/product/z3626198797881_072e1b90d963159270e7e5d3f3b50bcf_ffc1a96540984275a20a04f4387a3204_master.jpg');
INSERT INTO `image_product` VALUES (149, 18, 'https://product.hstatic.net/200000037048/product/z3672230519563_1d4ecd506e490f8312fd8bb1e5ca512b_42f5094b801f46f6b7156b9d6f8cf382_master.jpg');
INSERT INTO `image_product` VALUES (150, 18, 'https://product.hstatic.net/200000037048/product/z3672230526374_e43fd4011b529218789f1420456ab9c4_cefd25e332bc40f5b12b1ae3bed42436_master.jpg');
INSERT INTO `image_product` VALUES (151, 18, 'https://product.hstatic.net/200000037048/product/z3672230527828_9b67b1df778894837018fae35c21289d_e722413170b54174a7967fd73ef6cf1a_master.jpg');
INSERT INTO `image_product` VALUES (152, 18, 'https://product.hstatic.net/200000037048/product/z3672230534715_f3a3568423a382e2a4619a01b63bbc78_57e6e44730324ab39f52994a2c3420fa_master.jpg');

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `category` int NULL DEFAULT NULL,
  `image_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `price` decimal(15, 0) NULL DEFAULT NULL,
  `discount` decimal(15, 0) NULL DEFAULT NULL,
  `detail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `quantity` int NULL DEFAULT NULL,
  `create_date` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES (1, 'Đầm kyo vườn hoa hồng', 2, 'https://product.hstatic.net/200000037048/product/z3865528447083_830f73c988fe95f4e560dd820f8e9ed1_e9e06248169743fe99e93452db5ea635_large.jpg', 840000, 840000, 'A knit polo shirt featuring a basic collar, half-button placket, front embroidered crest graphic, and dropped short sleeves.', 100, '2022-10-26 13:55:15');
INSERT INTO `product` VALUES (2, 'Đầm sơ mi trắng cam', 2, 'https://product.hstatic.net/200000037048/product/z3854339302070_77557c29f78b967b87e21630c9224deb_2e071f51588048c3b8d1c9b8853f274d_large.jpg', 740000, 740000, 'A knit crop top featuring a V-cut halter neckline, ruched construction, and a back self-tie closure.', 100, '2022-10-27 15:57:38');
INSERT INTO `product` VALUES (3, 'Sơ mi satin thủy mặc', 1, 'https://product.hstatic.net/200000037048/product/z3852143346371_e96d010a7ce1cc93ce5e2c74448baa26_366bbbe27a8747eaac538f3a1f302569_large.jpg', 595000, 595000, 'A knit polo shirt featuring a basic collar, half-button placket, front embroidered crest graphic, and dropped short sleeves.', 100, '2022-10-26 13:55:15');
INSERT INTO `product` VALUES (4, 'Đầm sơ mi vệt cam', 2, 'https://product.hstatic.net/200000037048/product/z3850177474329_aeff58fc15fd03421cc1fd0913a30df9_8faa987249e34e93b727b567f3cef916_large.jpg', 740000, 740000, 'A knit crop top featuring a V-cut halter neckline, ruched construction, and a back self-tie closure.', 100, '2022-10-27 15:57:38');
INSERT INTO `product` VALUES (5, 'Áo dài truyền thống Ngọc Diệp hồng', 1, 'https://product.hstatic.net/200000037048/product/z3849510102894_70b6c479015cc44bfff1f2559ba2fdcb_1d37653831e84999b328d23ade5662f8_large.jpg', 1199000, 1199000, 'A knit polo shirt featuring a basic collar, half-button placket, front embroidered crest graphic, and dropped short sleeves.', 100, '2022-10-26 13:55:15');
INSERT INTO `product` VALUES (6, 'Áo kyo đen', 1, 'https://product.hstatic.net/200000037048/product/z3848616073572_bef5f1d001d7f5cebcedd2cd241aa507_8247896eada340e6b7e7aee9cc24c37f_large.jpg', 580000, 580000, 'A knit crop top featuring a V-cut halter neckline, ruched construction, and a back self-tie closure.', 100, '2022-10-27 15:57:38');
INSERT INTO `product` VALUES (7, 'Sơ mi chít eo nano tím', 1, 'https://product.hstatic.net/200000037048/product/z3850244497587_0d9bad12e96c69910ead6e6015e4e408_eb51c215e29c4434b0c200bdb4af71a9_large.jpg', 595000, 595000, 'A knit polo shirt featuring a basic collar, half-button placket, front embroidered crest graphic, and dropped short sleeves.', 100, '2022-10-26 13:55:15');
INSERT INTO `product` VALUES (8, 'Đầm diana đen (kèm belt)', 2, 'https://product.hstatic.net/200000037048/product/z3839560379897_7070143e1eddf45983554fd28e9b5928_9069a6b095b6463d8b866ff0d68c3d69_large.jpg', 1099000, 1099000, 'A knit crop top featuring a V-cut halter neckline, ruched construction, and a back self-tie closure.', 100, '2022-10-27 15:57:38');
INSERT INTO `product` VALUES (9, 'Sơ mi basic cổ nhọn', 1, '//product.hstatic.net/200000037048/product/z3836832053656_785deadc4a95b2bb6be0d5936d0c339c_35c72b29467e4dc385928feba8dc131b_large.jpg', 560000, 560000, 'A knit polo shirt featuring a basic collar, half-button placket, front embroidered crest graphic, and dropped short sleeves.', 100, '2022-10-26 13:55:15');
INSERT INTO `product` VALUES (10, 'Quần jeans baggy rêu', 4, '//product.hstatic.net/200000037048/product/z3837454551631_3337c273b8381c250a4906d34742e506_865f0522b668482f85f5b90efcfe7953_large.jpg', 539100, 539100, 'A knit crop top featuring a V-cut halter neckline, ruched construction, and a back self-tie closure.', 100, '2022-10-27 15:57:38');
INSERT INTO `product` VALUES (11, 'Đầm summer sakura hồng SALE', 2, 'https://product.hstatic.net/200000037048/product/z3679474749367_68c09215e15b4305ed1febcd766cd5bd_3f6064d82c6a455184dffea843ce1afc_large.jpg', 840000, 669000, NULL, 100, '2022-10-27 15:57:38');
INSERT INTO `product` VALUES (12, 'Đầm kyo hoa hồng SALE', 2, 'https://product.hstatic.net/200000037048/product/z3634215740381_6e3950aa7fdd1abd4c4dcf309ee71808_f09b6c6583684a4ea6464c90a5eb35f2_master.jpg', 890000, 669000, NULL, 100, '2022-10-27 15:57:38');
INSERT INTO `product` VALUES (13, 'Áo cổ đổ kem SALE', 1, 'https://product.hstatic.net/200000037048/product/z3650994243728_05f1c83c2211a9fc5327d9d039a7964e_5c5d2d8dd25343e683a70fcc01bb2cf7_large.jpg', 399000, 299000, NULL, 100, '2022-10-27 15:57:38');
INSERT INTO `product` VALUES (14, 'Áo summer sọc trắng SALE', 1, 'https://product.hstatic.net/200000037048/product/1_7911c7a1ccee4eac9d0adf76a3493159_large.jpg', 520000, 399000, NULL, 100, '2022-10-27 15:57:38');
INSERT INTO `product` VALUES (15, 'Đầm summer sakura xanh size XS - SALE', 2, 'https://product.hstatic.net/200000037048/product/z3620517501835_2d6415b056a18b6439b1d74cf778754a_9e9d2dbc7b1f456293454b6b1354be9a_large.jpg', 840000, 599000, NULL, 100, '2022-10-27 15:57:38');
INSERT INTO `product` VALUES (16, 'Sơ mi sakura xanh SALE', 1, 'https://product.hstatic.net/200000037048/product/z3630733818886_ea18ec0cab30de1eb29917461af9979c_9851aa5817ce4812b136219c901e012a_large.jpg', 595000, 449000, NULL, 100, '2022-10-27 15:57:38');
INSERT INTO `product` VALUES (17, 'Áo tank top hồng cẩm FINAL SALE', 1, 'https://product.hstatic.net/200000037048/product/z3558911492635_840822efe88d6728c40c257ba2d72c68_ba4c0a03b79b4321b8b3441c0c733c53_large.jpg', 359000, 249000, NULL, 100, '2022-10-27 15:57:38');
INSERT INTO `product` VALUES (18, 'Sơ mi lụa sồi blue tay đủ', 1, 'https://product.hstatic.net/200000037048/product/z3672230529806_6e2b8887ef66009e34229d8188c4d07d_3b32a5817fa44cde9c679c6086e9d888_large.jpg', 595000, 595000, NULL, 100, '2022-10-27 15:57:38');

-- ----------------------------
-- Table structure for product_description
-- ----------------------------
DROP TABLE IF EXISTS `product_description`;
CREATE TABLE `product_description`  (
  `product_id` int NOT NULL,
  `product_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `product_material` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `product_size` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `product_model_size` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `product_accessory` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`product_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of product_description
-- ----------------------------
INSERT INTO `product_description` VALUES (1, 'Form suông, áo kiểu chui đầu. Cổ đổ, lai ngang, 2 dây điều chỉnh được', 'Lụa satin 2 da, mềm, mướt, ít nhăn', 'Chiều dài áo 52cm, dây có thể điều chỉnh tăng giảm chiều dài được', '1m65-45kg, mặc size S', '2');
INSERT INTO `product_description` VALUES (2, 'Đầm form suông, cổ sơ mi. Đầm 1 lớp, có túi 2 bên. Dây nơ tháo rời được dễ điều chỉnh', 'Lụa hoa, mặc mát, mềm mượt, nhẹ, gần như không nhăn, thấm hút tốt', 'Đầm dài 102cm, tay dài 15cm, cửa tay 27cm', NULL, NULL);
INSERT INTO `product_description` VALUES (3, 'Form suông, tà giấu nút, lai ngang', 'Lụa satin mềm mượt, mát, gần như không nhăn', 'Chiều dài áo 66cm, tay áo dài 52cm', NULL, NULL);
INSERT INTO `product_description` VALUES (4, 'Đầm form suông, cổ sơ mi. Đầm 1 lớp, có túi 2 bên. Dây nơ tháo rời được dễ điều chỉnh', 'Satin mượt, mặc mát, nhẹ, gần như không nhăn, thấm hút tốt', 'Đầm dài 102cm, tay dài 15cm, cửa tay 27cm', NULL, NULL);
INSERT INTO `product_description` VALUES (5, 'Form truyền thống, chít eo trước và sau, thân áo không có nút gài, dây kéo sau. Áo dài 1 lớp, tay phối', 'Thân áo chất xốp hoa, tay áo chất lụa satin. Mềm mượt, ít nhăn', 'Áo dài 140cm, tay áo 50cm. Vòng cổ 37cm, cao 2cm', NULL, NULL);
INSERT INTO `product_description` VALUES (6, 'Form ôm, cổ ve, có chít ben trước và sau áo', 'Linen pha lụa, mềm mượt, ít nhăn, mặc mát, nhẹ', 'Chiều dài áo 55cm, tay dài 25cm', NULL, NULL);
INSERT INTO `product_description` VALUES (7, 'Form ôm chít eo phía sau và trước. Tay dài, lai bầu', 'Vải sợi nano, chống nhăn, chống khuẩn, chống tia UV, thấm hút tốt, mát, nhẹ', 'Chiều dài áo 66cm, chiều dài tay 52cm', NULL, NULL);
INSERT INTO `product_description` VALUES (8, 'Form ôm, xếp ly tạo kiểu ở eo, phần chân váy xẻ phía sau. Đầm 2 lớp, dây kéo sau, kèm belt tháo rời được, có nhiều nấc điều chỉnh.', 'Thun gân, rất ít nhăn', 'Chiều dài đầm 100cm, dài tay 24cm, belt 3cm', NULL, NULL);
INSERT INTO `product_description` VALUES (9, 'Form suông không chít eo, lai bầu, tà giấu nút.', 'Cotton lụa mềm mượt, ít nhăn, thấm hút tốt', 'Chiều dài áo 66cm, chiều dài tay 52cm', '1m65 - 45kg, mặc size S', NULL);
INSERT INTO `product_description` VALUES (10, 'Quần lưng cao, form baggy mặc thoải mái phần đùi hông', 'Từ 80% cotton nên mặc mùa hè mát, mùa đông ấm, vải dày dặn, co giãn, không nhăn', 'Dài 86cm', NULL, NULL);
INSERT INTO `product_description` VALUES (11, 'Nút mở được, có lót phần tùng váy, có 2 túi mổ 2 bên', 'Lụa hoa, gần như không nhăn, mặc mát', '	Chiều dài đầm 95cm, chiều dài tay 15cm, cửa tay 27cm', NULL, NULL);
INSERT INTO `product_description` VALUES (12, 'Đầm thân trên ôm, ngực đắp chéo cắt decoup. Phía dưới xòe, đắp tà tạo kiểu, túi mổ 2 bên. Đầm 2 lớp, tay phồng, dây kéo sau. ', 'Mango, mềm mượt, ít nhăn dễ ủi', 'Chiều dài đầm 94cm, chiều dài tay 20cm, cửa tay áo 27cm', NULL, NULL);
INSERT INTO `product_description` VALUES (13, 'Form suông, áo kiểu chui đầu. Cổ đổ, lai ngang, 2 dây điều chỉnh được', 'Lụa satin 2 da, mềm, mướt, ít nhăn', 'Chiều dài áo 52cm, dây có thể điều chỉnh tăng giảm chiều dài được', '	1m65-45kg, mặc size S', NULL);
INSERT INTO `product_description` VALUES (14, 'Áo dáng suông. Cổ trụ, tay phồng, nút mở được', 'Cotton thêu, ít nhăn, thấm hút tốt, mặc mát, nhẹ', 'Dài áo 55cm, dài tay áo 42cm', '1m65 - 45kg, mặc size S', NULL);
INSERT INTO `product_description` VALUES (15, 'Khoá kéo phía sau, nút mở được, có lót phần tùng váy, có 2 túi mổ 2 bên', '	Lụa hoa, gần như không nhăn, mặc mát', '	Chiều dài đầm 95cm, chiều dài tay 15cm, cửa tay 27cm', '1m67 - 45kg, mặc size S', NULL);
INSERT INTO `product_description` VALUES (16, 'Form suông, tà giấu nút, lai ngang', 'Lụa mượt, mát, gần như không nhăn', 'Chiều dài áo 66cm, tay áo dài 52cm', '1m67 - 45kg, mặc size S', NULL);
INSERT INTO `product_description` VALUES (17, 'Áo kiểu chui đầu, dáng ôm, lai ngang', 'Thun gân, mềm mượt, mặc mát, không nhăn, co giãn', 'Size S: Dài áo 53cm ; Ngực: 35cm, Sâu cổ: 11cm\nSize M Dài áo 55cm ; Ngực: 36.5cm, Sâu cổ: 11.3cm\nSize L: Dài áo 57cm ; Ngực: 38cm, Sâu cổ: 11.6cm', '	1m55 - 43kg, mặc size S', NULL);
INSERT INTO `product_description` VALUES (18, 'Form ôm chít eo sau, chít ben ngực ở trước. Tay ngắn, lai bầu', 'Lụa sồi, mịn mát, ít nhăn, chống co rút, dễ ủi, thấm hút mồ hôi tốt, thân thiện với môi trường', 'Chiều dài áo 64cm, tay dài 20, cửa tay áo 27cm', '1m65 - 45kg, mặc size S', NULL);

-- ----------------------------
-- Table structure for product_size
-- ----------------------------
DROP TABLE IF EXISTS `product_size`;
CREATE TABLE `product_size`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `product_size` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 91 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of product_size
-- ----------------------------
INSERT INTO `product_size` VALUES (1, 1, 'XS');
INSERT INTO `product_size` VALUES (2, 1, 'S');
INSERT INTO `product_size` VALUES (3, 1, 'M');
INSERT INTO `product_size` VALUES (4, 1, 'L');
INSERT INTO `product_size` VALUES (5, 1, 'XL');
INSERT INTO `product_size` VALUES (6, 2, 'XS');
INSERT INTO `product_size` VALUES (7, 2, 'S');
INSERT INTO `product_size` VALUES (8, 2, 'M');
INSERT INTO `product_size` VALUES (9, 2, 'L');
INSERT INTO `product_size` VALUES (10, 2, 'XL');
INSERT INTO `product_size` VALUES (11, 3, 'XS');
INSERT INTO `product_size` VALUES (12, 3, 'S');
INSERT INTO `product_size` VALUES (13, 3, 'M');
INSERT INTO `product_size` VALUES (15, 3, 'XL');
INSERT INTO `product_size` VALUES (16, 4, 'XS');
INSERT INTO `product_size` VALUES (17, 4, 'S');
INSERT INTO `product_size` VALUES (18, 4, 'M');
INSERT INTO `product_size` VALUES (19, 4, 'L');
INSERT INTO `product_size` VALUES (20, 4, 'XL');
INSERT INTO `product_size` VALUES (21, 5, 'XS');
INSERT INTO `product_size` VALUES (22, 5, 'S');
INSERT INTO `product_size` VALUES (23, 5, 'M');
INSERT INTO `product_size` VALUES (24, 5, 'L');
INSERT INTO `product_size` VALUES (25, 5, 'XL');
INSERT INTO `product_size` VALUES (26, 6, 'XS');
INSERT INTO `product_size` VALUES (27, 6, 'S');
INSERT INTO `product_size` VALUES (28, 6, 'M');
INSERT INTO `product_size` VALUES (29, 6, 'L');
INSERT INTO `product_size` VALUES (30, 6, 'XL');
INSERT INTO `product_size` VALUES (31, 7, 'XS');
INSERT INTO `product_size` VALUES (32, 7, 'S');
INSERT INTO `product_size` VALUES (33, 7, 'M');
INSERT INTO `product_size` VALUES (34, 7, 'L');
INSERT INTO `product_size` VALUES (35, 7, 'XL');
INSERT INTO `product_size` VALUES (36, 8, 'XS');
INSERT INTO `product_size` VALUES (37, 8, 'S');
INSERT INTO `product_size` VALUES (38, 8, 'M');
INSERT INTO `product_size` VALUES (39, 8, 'L');
INSERT INTO `product_size` VALUES (40, 8, 'XL');
INSERT INTO `product_size` VALUES (41, 9, 'XS');
INSERT INTO `product_size` VALUES (42, 9, 'S');
INSERT INTO `product_size` VALUES (43, 9, 'M');
INSERT INTO `product_size` VALUES (44, 9, 'L');
INSERT INTO `product_size` VALUES (45, 9, 'XL');
INSERT INTO `product_size` VALUES (46, 10, 'XS');
INSERT INTO `product_size` VALUES (47, 10, 'S');
INSERT INTO `product_size` VALUES (48, 10, 'M');
INSERT INTO `product_size` VALUES (49, 10, 'L');
INSERT INTO `product_size` VALUES (50, 10, 'XL');
INSERT INTO `product_size` VALUES (51, 11, 'XS');
INSERT INTO `product_size` VALUES (52, 11, 'S');
INSERT INTO `product_size` VALUES (53, 11, 'M');
INSERT INTO `product_size` VALUES (54, 11, 'L');
INSERT INTO `product_size` VALUES (55, 11, 'XL');
INSERT INTO `product_size` VALUES (56, 12, 'XS');
INSERT INTO `product_size` VALUES (57, 12, 'S');
INSERT INTO `product_size` VALUES (58, 12, 'M');
INSERT INTO `product_size` VALUES (59, 12, 'L');
INSERT INTO `product_size` VALUES (60, 12, 'XL');
INSERT INTO `product_size` VALUES (61, 13, 'XS');
INSERT INTO `product_size` VALUES (62, 13, 'S');
INSERT INTO `product_size` VALUES (63, 13, 'M');
INSERT INTO `product_size` VALUES (64, 13, 'L');
INSERT INTO `product_size` VALUES (65, 13, 'XL');
INSERT INTO `product_size` VALUES (66, 14, 'XS');
INSERT INTO `product_size` VALUES (67, 14, 'S');
INSERT INTO `product_size` VALUES (68, 14, 'M');
INSERT INTO `product_size` VALUES (69, 14, 'L');
INSERT INTO `product_size` VALUES (70, 14, 'XL');
INSERT INTO `product_size` VALUES (71, 15, 'XS');
INSERT INTO `product_size` VALUES (76, 16, 'XS');
INSERT INTO `product_size` VALUES (77, 16, 'S');
INSERT INTO `product_size` VALUES (78, 16, 'M');
INSERT INTO `product_size` VALUES (79, 16, 'L');
INSERT INTO `product_size` VALUES (80, 16, 'XL');
INSERT INTO `product_size` VALUES (81, 17, 'XS');
INSERT INTO `product_size` VALUES (82, 17, 'S');
INSERT INTO `product_size` VALUES (83, 17, 'M');
INSERT INTO `product_size` VALUES (84, 17, 'L');
INSERT INTO `product_size` VALUES (85, 17, 'XL');
INSERT INTO `product_size` VALUES (86, 18, 'XS');
INSERT INTO `product_size` VALUES (87, 18, 'S');
INSERT INTO `product_size` VALUES (88, 18, 'M');
INSERT INTO `product_size` VALUES (89, 18, 'L');
INSERT INTO `product_size` VALUES (90, 18, 'XL');

-- ----------------------------
-- Table structure for review_product
-- ----------------------------
DROP TABLE IF EXISTS `review_product`;
CREATE TABLE `review_product`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` int NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `rate` int NULL DEFAULT NULL,
  `create_date` datetime(0) NULL DEFAULT NULL,
  `create_user` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of review_product
-- ----------------------------
INSERT INTO `review_product` VALUES (1, 1, 'ok', 5, '2022-10-26 13:55:28', 1);
INSERT INTO `review_product` VALUES (2, 1, 'good', 4, '2022-10-26 13:55:39', 2);
INSERT INTO `review_product` VALUES (3, 2, 'ok', 5, '2022-10-27 15:58:00', 1);
INSERT INTO `review_product` VALUES (4, 2, 'not good', 1, '2022-10-27 15:58:13', 2);

-- ----------------------------
-- Table structure for todo
-- ----------------------------
DROP TABLE IF EXISTS `todo`;
CREATE TABLE `todo`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `create_user` int NULL DEFAULT NULL,
  `create_date` datetime(0) NULL DEFAULT NULL,
  `update_user` int NULL DEFAULT NULL,
  `update_date` datetime(0) NULL DEFAULT NULL,
  `del_flg` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of todo
-- ----------------------------
INSERT INTO `todo` VALUES (2, 'training vuejs', '1', 1, '2022-10-18 11:33:01', 1, '2022-10-18 11:46:42', '0');
INSERT INTO `todo` VALUES (3, 'training spring boot', '1', 1, '2022-10-18 11:36:47', 1, '2022-10-18 11:46:42', '0');
INSERT INTO `todo` VALUES (4, 'aaaa', '0', 1, '2022-10-17 14:43:46', 1, '2022-10-18 14:43:47', '0');
INSERT INTO `todo` VALUES (5, 'aaaa', '0', 1, '2022-10-28 14:31:35', 1, '2022-10-28 14:31:35', '0');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `create_user` int NULL DEFAULT NULL,
  `create_date` datetime(0) NULL DEFAULT NULL,
  `update_user` int NULL DEFAULT NULL,
  `update_date` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'admin', '$2a$04$/HXNK6sOG6a7a5Otyhmh7uzpJxfCYq17r1Oc5k85ghPNgbWuiuoX.', 'tieuconghoa@gmail.com', 0, '2022-10-17 11:32:48', 0, '2022-10-17 11:32:52');
INSERT INTO `user` VALUES (2, 'tieuconghoa', '$2a$04$/HXNK6sOG6a7a5Otyhmh7uzpJxfCYq17r1Oc5k85ghPNgbWuiuoX.', 'tieuconghoa@gmail.com', 0, '2022-10-17 11:32:48', 0, '2022-10-17 11:32:52');

SET FOREIGN_KEY_CHECKS = 1;
