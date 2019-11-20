module.exports = {
  resetMocks: true,
  restoreMocks: true,
  testMatch: ['**/test/**/*-test.js'],
  testPathIgnorePatterns: ['/node_modules/', '/test/support/', '.cache'],
  testURL: 'http://localhost',
}
