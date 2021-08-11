/**
* Metro configuration for React Native
* https://github.com/facebook/react-native
*
* @format
*/

const path = require('path');

const sampleLibPath = path.resolve(`${__dirname}/shared/sample-lib`);

module.exports = {
  transformer: {
    getTransformOptions: async () => ({
      transform: {
        experimentalImportSupport: false,
        inlineRequires: false,
      },
    }),
  },

  watchFolders: [sampleLibPath],
  resolver: {
    extraNodeModules: {
      'sample-lib': sampleLibPath,
    },
  },
};
