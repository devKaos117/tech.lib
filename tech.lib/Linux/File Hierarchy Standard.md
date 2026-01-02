---
category: linux
subjects:
  - component
full_form: File Hierarchy Standard
acronym: FHS
---

## Definition
Operating systems using *LINK_TO_SYSTEMD* system and service manager are organized based on a file system hierarchy inspired by UNIX.

```dataviewjs
const p="Linux/PATH.json",c=this.container;c.innerHTML="";(async()=>{let d;try{d=JSON.parse(await app.vault.adapter.read(p))["/"]}catch(e){return void c.createEl("p",{text:"❌ Error: "+e.message})}const s=c.createEl("input",{type:"text",placeholder:"🔍 Search"});Object.assign(s.style,{width:"100%",marginBottom:"1rem",padding:"8px",borderRadius:"5px",border:"1px solid var(--background-modifier-border)",backgroundColor:"var(--background-primary-alt)"});const l=c.createDiv();const o=(n,t)=>{const g=t.split("/").filter(x=>x),f=(ns,ss)=>{if(!ss.length)return!0;for(let x of ns)if(x.path===ss[0]&&f(x.childs||[],ss.slice(1)))return x._isOpen=!0,!0;return!1};return f(n,g)};const f=(n,q)=>n.reduce(((a,v)=>{const m=v.path.toLowerCase().includes(q)||(v.desc&&v.desc.toLowerCase().includes(q)),k=v.childs?f(v.childs,q):[];return(m||k.length>0)&&a.push({...v,childs:k,_isOpen:q.length>0||v._isOpen}),a}),[]);const r=(n,d=0)=>{const i="dir"===n.type,lk="link"===n.type,h=n.childs&&n.childs.length>0,ic=i?"🗁 ":lk?"🔗 ":"🗋 ",nt=n.note?`<span style="color:var(--text-success);font-size:0.8em;" title="${n.note}"> [i]</span>`:"",ds=n.desc?`<span style="color:var(--text-muted);font-size:0.9em;"> — ${n.desc}</span>`:"",lt=lk&&n.target?` <span class="fhs-link" data-target="${n.target}" style="color:var(--text-accent);cursor:pointer;text-decoration:underline;font-size:0.85em;">-> ${n.target}</span>`:"";if(!i||!h)return`<li style="list-style:none;margin-left:${15*d}px;padding-left:8px;">${ic}${n.path}${lt}${nt}${ds}</li>`;return`<details ${n._isOpen?"open":""} style="margin-left:${15*d}px;padding-left:8px;"><summary style="cursor:pointer;color:var(--text-accent);font-weight:600;list-style:none;">${ic}${n.path}/${lt}${nt}${ds}</summary><ul style="padding:0;margin:0;">${n.childs.map(x=>r(x,d+1)).join("")}</ul></details>`};const u=q=>{const fl=f(d,q.toLowerCase());l.innerHTML=`<div style="font-family:var(--font-monospace);font-size:13px;">${fl.map(n=>r(n)).join("")}</div>`;l.querySelectorAll(".fhs-link").forEach(e=>e.addEventListener("click",a=>{o(d,a.target.getAttribute("data-target"));s.value="";u("")}))};s.addEventListener("input",e=>u(e.target.value));u("")})();
```

## Relevant Reading
- [[]]

## External Reference
[en.wikipedia.org]()
[linuxfoundation.org/fhs](https://refspecs.linuxfoundation.org/fhs.shtml)