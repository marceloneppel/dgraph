// Check logs fatal if err != nil.
void Check(dynamic err) {
	if (err != null) {
		// TODO: log.Fatalf("%+v", errors.WithStack(err))
    throw err;
	}
}

// Checkf is Check with extra info.
//void Checkf(dynamic err, String format, ...dynamic args) {
void Checkf(dynamic err, String format, List<dynamic> args) {
	if (err != null) {
		// TODO: log.Fatalf("%+v", errors.Wrapf(err, format, args...))
    throw err;
	}
}

// Check2 acts as convenience wrapper around Check, using the 2nd argument as error.
void Check2(dynamic _, dynamic err) {
	Check(err);
}

// AssertTrue asserts that b is true. Otherwise, it would log fatal.
void AssertTrue(bool b) {
	if (!b) {
		// TODO: log.Fatalf("%+v", errors.Errorf("Assert failed"))
    throw "Assert failed";
	}
}

// AssertTruef is AssertTrue with extra info.
//void AssertTruef(bool b, String format, dynamic... args) {
void AssertTruef(bool b, String format, List<dynamic> args) {
	if (!b) {
		// TODO: log.Fatalf("%+v", errors.Errorf(format, args...))
    throw format;
	}
}