CKEDITOR.editorConfig = function( config )
{
	config.toolbar_mini =
	[

	   { name: 'document', items : [ 'Source','Preview' ] },

	   { name: 'clipboard', items : [ 'Cut','Copy','Paste','PasteText','PasteFromWord','-','Undo','Redo' ] },

	   { name: 'editing', items : [ 'Find','Replace','','SelectAll','','Scayt' ] },

	   { name: 'insert', items : [ 'Image'] },

	   { name: 'basicstyles', items : [ 'Bold','Italic','Strike','-','RemoveFormat' ] },

	   { name: 'paragraph', items : [ 'NumberedList','BulletedList','','Outdent','Indent','','Blockquote' ] },

	   { name: 'links', items : [ 'Link','Unlink','Anchor' ] },

	];

	config.toolbar_onlybasicstyles =
	[
	   { name: 'basicstyles', items : [ 'Bold','Italic','Strike' ] },
	];

};

