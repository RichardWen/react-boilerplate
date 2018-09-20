import * as React from "react";
import { mount } from "enzyme";

import App from "./App";

describe("App", () => {
  it("Displays has the right CSS class", () => {
    const wrapper = mount(<App />);
    const singleApp = wrapper.find("div.App");
    expect(singleApp.length).toEqual(1);
  });
});
