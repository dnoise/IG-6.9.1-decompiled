.class public final Lcom/instagram/creation/b/b/q;
.super Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;
.source "PhotoEditsSerializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/ser/std/StdSerializer",
        "<",
        "Lcom/instagram/creation/b/a/i;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/instagram/creation/b/a/i;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;-><init>(Ljava/lang/Class;)V

    .line 19
    return-void
.end method

.method private static a(Lcom/fasterxml/jackson/a/h;Ljava/lang/String;Landroid/graphics/PointF;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 69
    if-eqz p2, :cond_0

    .line 70
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/a/h;->writeFieldName(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/h;->writeStartArray()V

    .line 72
    iget v0, p2, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/h;->writeNumber(F)V

    .line 73
    iget v0, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/h;->writeNumber(F)V

    .line 74
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/h;->writeEndArray()V

    .line 76
    :cond_0
    return-void
.end method

.method private static a(Lcom/fasterxml/jackson/a/h;Ljava/lang/String;Ljava/lang/Float;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 57
    if-eqz p2, :cond_0

    .line 58
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/a/h;->writeNumberField(Ljava/lang/String;F)V

    .line 60
    :cond_0
    return-void
.end method

.method private static a(Lcom/fasterxml/jackson/a/h;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 63
    if-eqz p2, :cond_0

    .line 64
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/a/h;->writeNumberField(Ljava/lang/String;I)V

    .line 66
    :cond_0
    return-void
.end method

.method public static a(Lcom/instagram/creation/b/a/i;Lcom/fasterxml/jackson/a/h;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 30
    const-string v0, "filter_type"

    iget-object v1, p0, Lcom/instagram/creation/b/a/i;->a:Ljava/lang/Integer;

    invoke-static {p1, v0, v1}, Lcom/instagram/creation/b/b/q;->a(Lcom/fasterxml/jackson/a/h;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 31
    const-string v0, "filter_strength"

    iget-object v1, p0, Lcom/instagram/creation/b/a/i;->b:Ljava/lang/Float;

    invoke-static {p1, v0, v1}, Lcom/instagram/creation/b/b/q;->a(Lcom/fasterxml/jackson/a/h;Ljava/lang/String;Ljava/lang/Float;)V

    .line 33
    const-string v0, "border_enabled"

    iget-object v1, p0, Lcom/instagram/creation/b/a/i;->c:Ljava/lang/Integer;

    invoke-static {p1, v0, v1}, Lcom/instagram/creation/b/b/q;->a(Lcom/fasterxml/jackson/a/h;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 34
    const-string v0, "lux"

    iget-object v1, p0, Lcom/instagram/creation/b/a/i;->d:Ljava/lang/Float;

    invoke-static {p1, v0, v1}, Lcom/instagram/creation/b/b/q;->a(Lcom/fasterxml/jackson/a/h;Ljava/lang/String;Ljava/lang/Float;)V

    .line 36
    const-string v0, "brightness"

    iget-object v1, p0, Lcom/instagram/creation/b/a/i;->e:Ljava/lang/Float;

    invoke-static {p1, v0, v1}, Lcom/instagram/creation/b/b/q;->a(Lcom/fasterxml/jackson/a/h;Ljava/lang/String;Ljava/lang/Float;)V

    .line 37
    const-string v0, "contrast"

    iget-object v1, p0, Lcom/instagram/creation/b/a/i;->f:Ljava/lang/Float;

    invoke-static {p1, v0, v1}, Lcom/instagram/creation/b/b/q;->a(Lcom/fasterxml/jackson/a/h;Ljava/lang/String;Ljava/lang/Float;)V

    .line 38
    const-string v0, "temperature"

    iget-object v1, p0, Lcom/instagram/creation/b/a/i;->g:Ljava/lang/Float;

    invoke-static {p1, v0, v1}, Lcom/instagram/creation/b/b/q;->a(Lcom/fasterxml/jackson/a/h;Ljava/lang/String;Ljava/lang/Float;)V

    .line 39
    const-string v0, "saturation"

    iget-object v1, p0, Lcom/instagram/creation/b/a/i;->h:Ljava/lang/Float;

    invoke-static {p1, v0, v1}, Lcom/instagram/creation/b/b/q;->a(Lcom/fasterxml/jackson/a/h;Ljava/lang/String;Ljava/lang/Float;)V

    .line 40
    const-string v0, "highlights"

    iget-object v1, p0, Lcom/instagram/creation/b/a/i;->i:Ljava/lang/Float;

    invoke-static {p1, v0, v1}, Lcom/instagram/creation/b/b/q;->a(Lcom/fasterxml/jackson/a/h;Ljava/lang/String;Ljava/lang/Float;)V

    .line 41
    const-string v0, "shadows"

    iget-object v1, p0, Lcom/instagram/creation/b/a/i;->j:Ljava/lang/Float;

    invoke-static {p1, v0, v1}, Lcom/instagram/creation/b/b/q;->a(Lcom/fasterxml/jackson/a/h;Ljava/lang/String;Ljava/lang/Float;)V

    .line 42
    const-string v0, "vignette"

    iget-object v1, p0, Lcom/instagram/creation/b/a/i;->k:Ljava/lang/Float;

    invoke-static {p1, v0, v1}, Lcom/instagram/creation/b/b/q;->a(Lcom/fasterxml/jackson/a/h;Ljava/lang/String;Ljava/lang/Float;)V

    .line 43
    const-string v0, "sharpen"

    iget-object v1, p0, Lcom/instagram/creation/b/a/i;->l:Ljava/lang/Float;

    invoke-static {p1, v0, v1}, Lcom/instagram/creation/b/b/q;->a(Lcom/fasterxml/jackson/a/h;Ljava/lang/String;Ljava/lang/Float;)V

    .line 45
    const-string v0, "tiltshift_type"

    iget-object v1, p0, Lcom/instagram/creation/b/a/i;->m:Ljava/lang/Integer;

    invoke-static {p1, v0, v1}, Lcom/instagram/creation/b/b/q;->a(Lcom/fasterxml/jackson/a/h;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 46
    const-string v0, "tiltshift_center"

    iget-object v1, p0, Lcom/instagram/creation/b/a/i;->n:Landroid/graphics/PointF;

    invoke-static {p1, v0, v1}, Lcom/instagram/creation/b/b/q;->a(Lcom/fasterxml/jackson/a/h;Ljava/lang/String;Landroid/graphics/PointF;)V

    .line 47
    const-string v0, "tiltshift_radius"

    iget-object v1, p0, Lcom/instagram/creation/b/a/i;->o:Ljava/lang/Float;

    invoke-static {p1, v0, v1}, Lcom/instagram/creation/b/b/q;->a(Lcom/fasterxml/jackson/a/h;Ljava/lang/String;Ljava/lang/Float;)V

    .line 48
    const-string v0, "tiltshift_angle"

    iget-object v1, p0, Lcom/instagram/creation/b/a/i;->p:Ljava/lang/Float;

    invoke-static {p1, v0, v1}, Lcom/instagram/creation/b/b/q;->a(Lcom/fasterxml/jackson/a/h;Ljava/lang/String;Ljava/lang/Float;)V

    .line 50
    const-string v0, "crop_original_size"

    iget-object v1, p0, Lcom/instagram/creation/b/a/i;->q:Landroid/graphics/PointF;

    invoke-static {p1, v0, v1}, Lcom/instagram/creation/b/b/q;->a(Lcom/fasterxml/jackson/a/h;Ljava/lang/String;Landroid/graphics/PointF;)V

    .line 51
    const-string v0, "crop_center"

    iget-object v1, p0, Lcom/instagram/creation/b/a/i;->r:Landroid/graphics/PointF;

    invoke-static {p1, v0, v1}, Lcom/instagram/creation/b/b/q;->a(Lcom/fasterxml/jackson/a/h;Ljava/lang/String;Landroid/graphics/PointF;)V

    .line 52
    const-string v0, "crop_zoom"

    iget-object v1, p0, Lcom/instagram/creation/b/a/i;->s:Ljava/lang/Float;

    invoke-static {p1, v0, v1}, Lcom/instagram/creation/b/b/q;->a(Lcom/fasterxml/jackson/a/h;Ljava/lang/String;Ljava/lang/Float;)V

    .line 53
    const-string v0, "crop_angle"

    iget-object v1, p0, Lcom/instagram/creation/b/a/i;->t:Ljava/lang/Integer;

    invoke-static {p1, v0, v1}, Lcom/instagram/creation/b/b/q;->a(Lcom/fasterxml/jackson/a/h;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 54
    return-void
.end method

.method private static b(Lcom/instagram/creation/b/a/i;Lcom/fasterxml/jackson/a/h;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/h;->writeStartObject()V

    .line 25
    invoke-static {p0, p1}, Lcom/instagram/creation/b/b/q;->a(Lcom/instagram/creation/b/a/i;Lcom/fasterxml/jackson/a/h;)V

    .line 26
    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/h;->writeEndObject()V

    .line 27
    return-void
.end method


# virtual methods
.method public final synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter

    .prologue
    .line 15
    check-cast p1, Lcom/instagram/creation/b/a/i;

    .end local p1
    invoke-static {p1, p2}, Lcom/instagram/creation/b/b/q;->b(Lcom/instagram/creation/b/a/i;Lcom/fasterxml/jackson/a/h;)V

    return-void
.end method
