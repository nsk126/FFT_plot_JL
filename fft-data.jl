# DL dependencies
#import Pkg
#Pkg.add("FFTW")
#Pkg.add("Plots")

# Imports
using Plots
using FFTW

# File IO
f_data = zeros(0)
f_data = open("data") do f
   line = 1;
   while !eof(f)
     x = readline(f);
     x = parse(Float64, x);
     append!(f_data, x);
     # println("$line $x");
     line += 1;
   end
   (f_data)
end

# display(f_data);
# p = plot(f_data)
# display(p)

p1 = plot(abs.(fft(f_data)))
display(p1)
