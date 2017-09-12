require('rspec')
require('triangle')
require 'pry'

  describe("#triangle?") do
    it("returns false if it is not a triangle") do
      test_triangle = Triangle.new(2, 2, 8)
      expect(test_triangle.triangle?()).to(eq("This is not a triangle."))
    end

    it("returns equilateral if all sides equal") do
      test_triangle = Triangle.new(2, 2, 2)
      expect(test_triangle.triangle?()).to(eq("This is an equilateral triangle."))
    end

    it("returns isosceles if exactly 2 sides are equal") do
      test_triangle = Triangle.new(2, 2, 1)
      expect(test_triangle.triangle?()).to(eq("This is an isosceles triangle."))
    end

    it("returns scalene if no sides are equal") do
      test_triangle = Triangle.new(208, 203, 145)
      expect(test_triangle.triangle?()).to(eq("This is a scalene triangle."))
    end
  end
