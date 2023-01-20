staks = [
    "Full-Stack Developer",
    "Web Desing . . .   ",
    "JAVA | PHP | DOCKER",
];
count = 2;
function sleep(ms) {
    return new Promise(resolve => setTimeout(resolve, ms));
}
async function changeStack() {
    document.getElementById("hello").classList.remove("anim" + count);
    count++;
    if (count >= 3) {
        count = 0;
    }
    console.log(count)
    document.getElementById("stack").innerHTML = staks[count];
    await sleep(200);
    document.getElementById("hello").classList.add("anim" + count);
    await sleep(11000);
    changeStack();
}
changeStack();