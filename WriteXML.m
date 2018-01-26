function a = WriteXML(num, centers)

docNode = com.mathworks.xml.XMLUtils.createDocument('Poses');
docRootNode = docNode.getDocumentElement();

for i=1:num
    pos = docNode.createElement('Pos');
    docRootNode.appendChild(pos);

    xpos = docNode.createElement('xpos');
    xpos.appendChild(docNode.createTextNode(num2str(centers(i,1))));
    ypos = docNode.createElement('ypos');
    ypos.appendChild(docNode.createTextNode(num2str(centers(i,2))));
    pos.appendChild(xpos);
    pos.appendChild(ypos);
    docRootNode.appendChild(pos);
end


xmlFileName = 'HousePos.xml';
xmlwrite(xmlFileName,docNode);

end