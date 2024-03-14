const os = require('os');
const fs = require('fs');

if(os.platform() === 'win32') {
    fs.writeFileSync('./current.ps1',fs.readFileSync('script.ps1', 'utf8').replaceAll('{dirname}', __dirname));
    fs.writeFileSync('../../../_ts.ps1',fs.readFileSync('script.ps1', 'utf8').replaceAll('{dirname}', __dirname));
} else {
    fs.writeFileSync('./current.ps1',fs.readFileSync('script.sh', 'utf8').replaceAll('{dirname}', __dirname));
}

fs.writeFileSync('./node_modules/ts-node/dist/configuration.js',fs.readFileSync('configuration.js', 'utf8'));