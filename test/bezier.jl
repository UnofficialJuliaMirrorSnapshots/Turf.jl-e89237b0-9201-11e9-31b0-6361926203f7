@testset "bezier" begin
    line = LineString([
      [
        121.025390625,
        -22.91792293614603
      ],
      [
        130.6494140625,
        -19.394067895396613
      ],
      [
        138.33984375,
        -25.681137335685307
      ],
      [
        138.3837890625,
        -32.026706293336126
      ]
    ])

    @test bezier(line).coordinates[2] ≈ [121.02555091028576,-22.917812175967313]
end
