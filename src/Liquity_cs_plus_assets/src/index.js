import { Actor, HttpAgent } from '@dfinity/agent';
import { idlFactory as Liquity_cs_plus_idl, canisterId as Liquity_cs_plus_id } from 'dfx-generated/Liquity_cs_plus';

const agent = new HttpAgent();
const Liquity_cs_plus = Actor.createActor(Liquity_cs_plus_idl, { agent, canisterId: Liquity_cs_plus_id });

document.getElementById("clickMeBtn").addEventListener("click", async () => {
  const name = document.getElementById("name").value.toString();
  const greeting = await Liquity_cs_plus.greet(name);

  document.getElementById("greeting").innerText = greeting;
});
