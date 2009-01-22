scenario "testing the easyb run command", {
    given "a string", {
        var = "hello world"
    }
    then "shoud not be null", {
        var.shouldNotBe null
    }
}