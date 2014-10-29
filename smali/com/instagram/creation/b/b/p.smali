.class public final Lcom/instagram/creation/b/b/p;
.super Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;
.source "PhotoEditsDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer",
        "<",
        "Lcom/instagram/creation/b/a/i;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/instagram/creation/b/a/i;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;-><init>(Ljava/lang/Class;)V

    .line 20
    return-void
.end method

.method private static a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/creation/b/a/i;
    .locals 1
    .parameter

    .prologue
    .line 24
    const-class v0, Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/l;->readValueAs(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;

    .line 26
    invoke-static {v0}, Lcom/instagram/creation/b/b/p;->a(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/instagram/creation/b/a/i;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/instagram/creation/b/a/i;
    .locals 2
    .parameter

    .prologue
    .line 31
    new-instance v0, Lcom/instagram/creation/b/a/i;

    invoke-direct {v0}, Lcom/instagram/creation/b/a/i;-><init>()V

    .line 33
    const-string v1, "filter_type"

    invoke-static {p0, v1}, Lcom/instagram/creation/b/b/p;->b(Lcom/fasterxml/jackson/databind/JsonNode;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/instagram/creation/b/a/i;->a:Ljava/lang/Integer;

    .line 34
    const-string v1, "filter_strength"

    invoke-static {p0, v1}, Lcom/instagram/creation/b/b/p;->a(Lcom/fasterxml/jackson/databind/JsonNode;Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/instagram/creation/b/a/i;->b:Ljava/lang/Float;

    .line 36
    const-string v1, "border_enabled"

    invoke-static {p0, v1}, Lcom/instagram/creation/b/b/p;->b(Lcom/fasterxml/jackson/databind/JsonNode;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/instagram/creation/b/a/i;->c:Ljava/lang/Integer;

    .line 37
    const-string v1, "lux"

    invoke-static {p0, v1}, Lcom/instagram/creation/b/b/p;->a(Lcom/fasterxml/jackson/databind/JsonNode;Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/instagram/creation/b/a/i;->d:Ljava/lang/Float;

    .line 39
    const-string v1, "brightness"

    invoke-static {p0, v1}, Lcom/instagram/creation/b/b/p;->a(Lcom/fasterxml/jackson/databind/JsonNode;Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/instagram/creation/b/a/i;->e:Ljava/lang/Float;

    .line 40
    const-string v1, "contrast"

    invoke-static {p0, v1}, Lcom/instagram/creation/b/b/p;->a(Lcom/fasterxml/jackson/databind/JsonNode;Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/instagram/creation/b/a/i;->f:Ljava/lang/Float;

    .line 41
    const-string v1, "temperature"

    invoke-static {p0, v1}, Lcom/instagram/creation/b/b/p;->a(Lcom/fasterxml/jackson/databind/JsonNode;Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/instagram/creation/b/a/i;->g:Ljava/lang/Float;

    .line 42
    const-string v1, "saturation"

    invoke-static {p0, v1}, Lcom/instagram/creation/b/b/p;->a(Lcom/fasterxml/jackson/databind/JsonNode;Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/instagram/creation/b/a/i;->h:Ljava/lang/Float;

    .line 43
    const-string v1, "highlights"

    invoke-static {p0, v1}, Lcom/instagram/creation/b/b/p;->a(Lcom/fasterxml/jackson/databind/JsonNode;Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/instagram/creation/b/a/i;->i:Ljava/lang/Float;

    .line 44
    const-string v1, "shadows"

    invoke-static {p0, v1}, Lcom/instagram/creation/b/b/p;->a(Lcom/fasterxml/jackson/databind/JsonNode;Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/instagram/creation/b/a/i;->j:Ljava/lang/Float;

    .line 45
    const-string v1, "vignette"

    invoke-static {p0, v1}, Lcom/instagram/creation/b/b/p;->a(Lcom/fasterxml/jackson/databind/JsonNode;Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/instagram/creation/b/a/i;->k:Ljava/lang/Float;

    .line 46
    const-string v1, "sharpen"

    invoke-static {p0, v1}, Lcom/instagram/creation/b/b/p;->a(Lcom/fasterxml/jackson/databind/JsonNode;Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/instagram/creation/b/a/i;->l:Ljava/lang/Float;

    .line 48
    const-string v1, "tiltshift_type"

    invoke-static {p0, v1}, Lcom/instagram/creation/b/b/p;->b(Lcom/fasterxml/jackson/databind/JsonNode;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/instagram/creation/b/a/i;->m:Ljava/lang/Integer;

    .line 49
    const-string v1, "tiltshift_center"

    invoke-static {p0, v1}, Lcom/instagram/creation/b/b/p;->c(Lcom/fasterxml/jackson/databind/JsonNode;Ljava/lang/String;)Landroid/graphics/PointF;

    move-result-object v1

    iput-object v1, v0, Lcom/instagram/creation/b/a/i;->n:Landroid/graphics/PointF;

    .line 50
    const-string v1, "tiltshift_radius"

    invoke-static {p0, v1}, Lcom/instagram/creation/b/b/p;->a(Lcom/fasterxml/jackson/databind/JsonNode;Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/instagram/creation/b/a/i;->o:Ljava/lang/Float;

    .line 51
    const-string v1, "tiltshift_angle"

    invoke-static {p0, v1}, Lcom/instagram/creation/b/b/p;->a(Lcom/fasterxml/jackson/databind/JsonNode;Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/instagram/creation/b/a/i;->p:Ljava/lang/Float;

    .line 53
    const-string v1, "crop_original_size"

    invoke-static {p0, v1}, Lcom/instagram/creation/b/b/p;->c(Lcom/fasterxml/jackson/databind/JsonNode;Ljava/lang/String;)Landroid/graphics/PointF;

    move-result-object v1

    iput-object v1, v0, Lcom/instagram/creation/b/a/i;->q:Landroid/graphics/PointF;

    .line 54
    const-string v1, "crop_center"

    invoke-static {p0, v1}, Lcom/instagram/creation/b/b/p;->c(Lcom/fasterxml/jackson/databind/JsonNode;Ljava/lang/String;)Landroid/graphics/PointF;

    move-result-object v1

    iput-object v1, v0, Lcom/instagram/creation/b/a/i;->r:Landroid/graphics/PointF;

    .line 55
    const-string v1, "crop_zoom"

    invoke-static {p0, v1}, Lcom/instagram/creation/b/b/p;->a(Lcom/fasterxml/jackson/databind/JsonNode;Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/instagram/creation/b/a/i;->s:Ljava/lang/Float;

    .line 56
    const-string v1, "crop_angle"

    invoke-static {p0, v1}, Lcom/instagram/creation/b/b/p;->b(Lcom/fasterxml/jackson/databind/JsonNode;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/instagram/creation/b/a/i;->t:Ljava/lang/Integer;

    .line 58
    return-object v0
.end method

.method private static a(Lcom/fasterxml/jackson/databind/JsonNode;Ljava/lang/String;)Ljava/lang/Float;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    .line 63
    const/4 v0, 0x0

    .line 64
    if-eqz v1, :cond_0

    .line 65
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JsonNode;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 67
    :cond_0
    return-object v0
.end method

.method private static b(Lcom/fasterxml/jackson/databind/JsonNode;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    .line 72
    const/4 v0, 0x0

    .line 73
    if-eqz v1, :cond_0

    .line 74
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JsonNode;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 76
    :cond_0
    return-object v0
.end method

.method private static c(Lcom/fasterxml/jackson/databind/JsonNode;Ljava/lang/String;)Landroid/graphics/PointF;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 80
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    .line 81
    const/4 v0, 0x0

    .line 82
    if-eqz v1, :cond_0

    .line 83
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(I)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JsonNode;->asDouble()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 84
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/fasterxml/jackson/databind/JsonNode;->get(I)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JsonNode;->asDouble()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 85
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 86
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {v2}, Ljava/lang/Double;->floatValue()F

    move-result v2

    invoke-virtual {v1}, Ljava/lang/Double;->floatValue()F

    move-result v1

    invoke-direct {v0, v2, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 89
    :cond_0
    return-object v0
.end method


# virtual methods
.method public final synthetic deserialize(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter

    .prologue
    .line 16
    invoke-static {p1}, Lcom/instagram/creation/b/b/p;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/creation/b/a/i;

    move-result-object v0

    return-object v0
.end method
