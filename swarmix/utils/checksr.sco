float checksr(float sr) {
	if (SR() != sr) {
		print("** sample rates do not match **")
		exit()
	}
	return 0
}