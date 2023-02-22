#usethis::use_test()
library(testthat)
test_that("validité valeur",{
  expect_equal(heron(10,20,15),72.618440, tolerance = 0.0001)
  expect_equal(heron(10,10,0),'Attention, un des éléments est inférieur ou égal à 0')
})

