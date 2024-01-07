describe 'Matcher output' do
  it { expect{ puts "Victor" }.to output.to_stdout }
  it { expect{ print "Victor" }.to output("Victor").to_stdout }
  it { expect{ puts "Victor" }.to output(/Victor/).to_stdout }

  it { expect{ warn "Victor" }.to output.to_stderr }
  it { expect{ warn "Victor" }.to output("Victor\n").to_stderr }
  it { expect{ warn "Victor" }.to output(/Victor/).to_stderr }
end
