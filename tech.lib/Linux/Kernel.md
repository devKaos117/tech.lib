rings
shell
`$=const p=(await dv.io.load("Linux/PATH.json"))["/"];const find=(arr,path)=>{for(let item of arr){if(path.startsWith("/"+item.path)){const sub=path.slice(item.path.length+1);if(!sub)return item;if(item.childs)return find(item.childs,sub)}}};const f=find(p,"/etc/passwd");dv.span(f?`${f.path}: ${f.desc}`:"❌ Path not found")`