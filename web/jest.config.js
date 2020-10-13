module.exports = {
  moduleNameMapper: {
    'src/(.*)$': '<rootDir>/src/$1',
    'test/(.*)$': '<rootDir>/test/$1',
  },
  resetMocks: true,
  restoreMocks: true,
  setupFilesAfterEnv: ['<rootDir>/test/setup-tests.ts'],
  testMatch: [
    '**/test/**/*-test.js',
    '**/test/**/*-test.jsx',
    '**/test/**/*-test.ts',
    '**/test/**/*-test.tsx',
  ],
  testPathIgnorePatterns: ['/node_modules/', '/test/support/', '.cache', '/.next/'],
  testURL: 'http://localhost',
  transform: {
    '^.+\\.(js|jsx|ts|tsx)$': '<rootDir>/node_modules/babel-jest',
  },
}
