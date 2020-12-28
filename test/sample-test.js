const { expect } = require("chai");

describe("Gas test", function () {
  let test;
  let callback;

  beforeEach(async function () {
    [owner, user] = await ethers.getSigners();
    const Test = await ethers.getContractFactory("Test");
    const Callback = await ethers.getContractFactory("Callback");

    test = await Test.deploy();
    callback = await Callback.deploy();

    await test.setCallback(callback.address);
  });

  it("Do 50k gas", async function () {
    // #1, gasleft 28671
    // #2, gasleft 26858
    // #3, gasleft 22237
    // total ~28k gas used
    await test.f({ gasPrice: 1, gasLimit: 50000 });
  });
  it("Do 500k gas", async function () {
    // #1, gasleft 478671
    // #2, gasleft 476858
    // #3, gasleft 465206
    // total ~35k gas used
    await test.f({ gasPrice: 1, gasLimit: 500000 });
  });
  it("Do 900k gas", async function () {
    // #1, gasleft 878671
    // #2, gasleft 876858
    // #3, gasleft 858956
    // total ~42k gas used
    await test.f({ gasPrice: 1, gasLimit: 900000 });
  });
});
