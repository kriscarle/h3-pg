\pset tuples_only on
\set degs 90.45
\set rads 1.57865030842887
\set epsilon 0.0000000000001

--
-- TEST h3_hex_area
--

SELECT h3_hex_area(10) = 15047.5;
SELECT h3_hex_area(10, true) = 0.0150475;

--
-- TEST h3_edge_length
--

SELECT h3_edge_length(10) = 65.90780749;
SELECT h3_edge_length(10, true) = 0.065907807;

--
-- TEST h3_num_hexagons
--

SELECT h3_num_hexagons(0) = 122;
SELECT h3_num_hexagons(15) = 569707381193162;

--
-- TEST h3_get_res_0_indexes
--

SELECT COUNT(*) = 122 FROM (SELECT h3_get_res_0_indexes()) q;