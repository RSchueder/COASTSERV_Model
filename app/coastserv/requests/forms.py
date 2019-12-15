from flask_wtf import FlaskForm
from wtforms import StringField,  SubmitField, TextAreaField, FileField, FloatField, PasswordField, SelectField
from wtforms.validators import DataRequired
from flask_wtf.file import FileField, FileRequired, FileAllowed

class RequestForm(FlaskForm):

    name   = StringField('Name of model', validators=[DataRequired()])

    tstart = StringField('start time (yyyy-mm-dd HH:MM:SS)', validators=[DataRequired()])
    tend   = StringField('end time (yyyy-mm-dd HH:MM:SS)', validators=[DataRequired()])
    tref   = StringField('reference time (yyyy-mm-dd HH:MM:SS)', validators=[DataRequired()])

    xmin     = FloatField('xmin', validators=[DataRequired()])
    xmax     = FloatField('xmax', validators=[DataRequired()])
    ymin     = FloatField('ymin', validators=[DataRequired()])
    ymax     = FloatField('ymax', validators=[DataRequired()])
    pli_file = FileField('Upload .pli file'  , validators=[FileAllowed(['pli']), FileRequired([])])
    
    dataset  = SelectField('Dataset', choices=[('physchem', 'PhysChem'), ('bio', 'BioGeoChem')])
    
    username = StringField('Username', validators=[DataRequired()])
    password = PasswordField('Password', validators=[DataRequired()])

    submit = SubmitField('Submit')

