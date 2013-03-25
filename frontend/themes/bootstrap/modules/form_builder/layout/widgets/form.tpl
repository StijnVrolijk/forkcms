{* Note: we can use general variables names here since this template is parsed within its own scope *}

<section class="row-fluid" id="formbuilder{$formName|camelcase}">
	<div class="span12">
		{option:successMessage}<div class="alert alert-success" role="alert">{$successMessage}</div>{/option:successMessage}
		{option:formBuilderError}<div class="alert alert-error" role="alert">{$formBuilderError}</div>{/option:formBuilderError}

		{option:fields}
			<form id="{$formName}" method="post" action="{$formAction}">
				<fieldset class="form">
					<input type="hidden" name="form" value="{$formName}" />

					{iteration:fields}
						<div class="row-fluid" id="field{$fields.name|camelcase}">
							<div class="span12">
								{* Headings and paragraphs *}
								{option:fields.plaintext}
									<div class="content">
										{$fields.html}
									</div>
								{/option:fields.plaintext}

								{* Input fields, textarea's and dropdowns *}
								{option:fields.simple}
									<div class="control-group{option:fields.error} error{/option:fields.error}">
										<label class="control-label" for="{$fields.name}">
											{$fields.label}{option:fields.required}<abbr title="{$lblRequiredField}">*</abbr>{/option:fields.required}
										</label>
										<div class="controls">
											{$fields.html}
											{option:fields.error}<span class="formError help-inline">{$fields.error}</span>{/option:fields.error}
										</div>
									</div>
								{/option:fields.simple}

								{* Radiobuttons and checkboxes *}
								{option:fields.multiple}
									<div class="control-group{option:fields.error} error{/option:fields.error}">
										<p class="control-label">
											{$fields.label}{option:fields.required}<abbr title="{$lblRequiredField}">*</abbr>{/option:fields.required}
										</p>
										<div class="controls">
											{iteration:fields.html}
												<label class="checkbox" for="{$fields.html.id}">
													{$fields.html.field} {$fields.html.label}
												</label>
											{/iteration:fields.html}
											{option:fields.error}<span class="formError help-inline">{$fields.error}</span>{/option:fields.error}
										</div>
									</div>
								{/option:fields.multiple}
							</div>
						</div>
					{/iteration:fields}
					<div class="row-fluid">
						<div class="span12">
							<div class="form-actions">
								<input type="submit" value="{$submitValue}" name="submit" class="inputSubmit btn btn-primary" />
							</div>
						</div>
					</div>
				</fieldset>
			</form>
		{/option:fields}
	</div>
</section>