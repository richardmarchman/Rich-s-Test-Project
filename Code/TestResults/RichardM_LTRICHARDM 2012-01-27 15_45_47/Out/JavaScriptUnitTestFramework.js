var assert = {

    areEqual: function (expected, actual, message)
    {
        if (expected !== actual)
        {
            throw new Error("Expected value " + expected
                + " is not equal to " + actual + ". " + message);
        }
    }

};