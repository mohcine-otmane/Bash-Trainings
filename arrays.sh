# An array of particles
particles=("electron" "proton" "notron" "neutron" "positron" "antiproton" "antineutron" "muon" "tau")
# Print the number of particles in the array
echo "Total particles: ${#particles[@]}"
# prints all the particles in the array
echo "Particles: ${particles[@]}"
# Add a new particle to the array
particles+=("photon") 
echo "Total particles: ${#particles[@]}"
echo "Particles: ${particles[@]}"



for i in $(seq 1 "3"); do
    read -p "Enter random[$i]:" random[$i]
done
echo "Random numbers: ${random[@]}"