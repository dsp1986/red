	
	<div class='field acheckbox'>
		<label for='id_{{$field.0}}'>{{$field.1}}</label>
		<input type="checkbox" class="abook-edit-them" name='{{$field.0}}' id='them_id_{{$field.0}}' value="1" disabled="disabled" {{if $field.2}}checked="checked"{{/if}} />
		<input type="checkbox" class="abook-edit-me" name='{{$field.0}}' id='me_id_{{$field.0}}' value="{{$field.4}}" {{if $field.3}}checked="checked"{{/if}} {{if $field.5}} disabled="disabled" {{/if}}/>
		<span class='field_abook_help'>{{$field.6}}</span>
	</div>