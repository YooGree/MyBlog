<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


	
			<div class="col-sm-8 text-left ">

				<form>
					<fieldset>
						<legend>í¬ì¤í¸ ì°ê¸°</legend>
						<div class="form-group row">
							<label for="staticEmail" class="col-sm-2 col-form-label">ìì±ì</label>
							<div class="col-sm-10">
								<input type="text" readonly class="form-control-plaintext"
									id="staticEmail" value="email@example.com" disabled="disabled">
							</div>
						</div>


						<div class="form-group">
							<label for="exampleSelect1">ì¹´íê³ ë¦¬ ì í</label> <select
								class="form-control" id="exampleSelect1">
								<option>Daily</option>
								<option>Food</option>
								<option>Friends</option>

							</select>
						</div>

						<div class="form-group">
							<label for="exampleTextarea">ë´ì©</label>
							<textarea class="form-control" id="exampleTextarea" rows="30"></textarea>
							<script>
								CKEDITOR.replace('exampleTextarea');
							</script>
						</div>
						<div class="form-group">
							<label for="exampleInputFile">File input</label> <input
								type="file" class="form-control-file" id="exampleInputFile"
								aria-describedby="fileHelp"> <small id="fileHelp"
								class="form-text text-muted">This is some placeholder
								block-level help text for the above input. It's a bit lighter
								and easily wraps to a new line.</small>
						</div>
						<fieldset class="form-group">
							<label for="exampleSelect1">ì¤ì  ì ë³´</label>
							<div class="form-check">
								<label class="form-check-label"> <input type="radio"
									class="form-check-input" name="optionsRadios"
									id="optionsRadios1" value="option1" checked> ì ì²´ê³µê°
								</label>
							</div>
							<div class="form-check">
								<label class="form-check-label"> <input type="radio"
									class="form-check-input" name="optionsRadios"
									id="optionsRadios2" value="option2"> ë¹ê³µê°
								</label>
							</div>

						</fieldset>

						<button type="submit" class="btn btn-primary">ì ì¥</button>
					</fieldset>
				</form>
			</div>
			
