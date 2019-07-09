@testset "bearing" begin

    start = Position([-75, 45])
    stop = Position([20, 60])

    @test bearing(start, stop, false) ≈ 37.75 atol=0.01
    @test bearing(start, stop, true) ≈ 120.01 atol=0.005
    @test rhumb_bearing(start, stop, false) ≈ 75.28 atol=0.001
    @test rhumb_bearing(start, stop, true) ≈ -104.71 atol=0.01
    @test bearing_to_azimuth(40.) == 40.
    @test bearing_to_azimuth(-105.) == 255.
    @test bearing_to_azimuth(410.) == 50.
end
