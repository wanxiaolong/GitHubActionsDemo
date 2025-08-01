const core = require('@actions/core');
const github = require('@actions/github');

async function run() {
    try {
        // 获取action的输入
        const name = core.getInput('name');
        const greeting = `Hello, ${name}!`;
        console.log(greeting);

        // 设置action的输出
        core.setOutput('javascript-action-output', greeting);

        // 输出一些上下文信息
        console.log(`Workflow started by: ${github.context.actor}`);
    } catch (error) {
        core.setFailed(`Action failed with error ${error.message}`);
    }
}

run();