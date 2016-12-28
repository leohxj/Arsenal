module.exports = {
    "env": {
        "browser": true
    },
    "extends": "eslint:recommended",
    "globals": {
        // false: only read; true: both write and read
        "$": false
    },
    "rules": {
        "indent": [
            "error",
            4
        ],
        // keep with .editorconfig
        "linebreak-style": [
            "error",
            "windows"
        ],
        "quotes": [
            "error",
            "double"
        ],
        "semi": [
            "error",
            "always"
        ]
    }
};
