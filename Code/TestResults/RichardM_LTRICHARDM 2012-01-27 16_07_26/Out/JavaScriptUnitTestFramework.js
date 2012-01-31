var assert = {

    areEqual: function (expected, actual, message)
    {
        if (expected !== actual)
        {
            throw new Error("Expected value " + expected
                + " is not equal to " + actual + ". " + message);
        }
    },

    areNotEqual: function (expected, actual, message)
    {
        if (expected == actual)
        {
            throw new Error("Expected value " + expected
                + " is equal to " + actual + ". " + message);
        }
    }

    isGreaterThan: function (expected, actual, message)
    {
        if (expected <= actual)
        {
            throw new Error("Expected value " + expected
                + " is equal to " + actual + ". " + message);
        }
    },

    isLessThan: function (expected, actual, message)
    {
        if (expected >= actual)
        {
            throw new Error("Expected value " + expected
                + " is equal to " + actual + ". " + message);
        }
    }
    

};
