.class public final Lcom/instagram/android/g/b/c;
.super Ljava/lang/Object;
.source "UserForEditing.java"


# static fields
.field public static a:I

.field public static b:I

.field public static c:I


# instance fields
.field private d:Lcom/instagram/user/c/a;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x1

    sput v0, Lcom/instagram/android/g/b/c;->a:I

    .line 13
    const/4 v0, 0x2

    sput v0, Lcom/instagram/android/g/b/c;->b:I

    .line 14
    const/4 v0, 0x3

    sput v0, Lcom/instagram/android/g/b/c;->c:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    sget v0, Lcom/instagram/android/g/b/c;->c:I

    iput v0, p0, Lcom/instagram/android/g/b/c;->i:I

    return-void
.end method

.method public static a(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/instagram/android/g/b/c;
    .locals 3
    .parameter

    .prologue
    .line 24
    new-instance v0, Lcom/instagram/android/g/b/c;

    invoke-direct {v0}, Lcom/instagram/android/g/b/c;-><init>()V

    .line 25
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/instagram/user/c/a;->a(Lcom/fasterxml/jackson/databind/JsonNode;Lcom/instagram/user/c/a;)Lcom/instagram/user/c/a;

    move-result-object v1

    iput-object v1, v0, Lcom/instagram/android/g/b/c;->d:Lcom/instagram/user/c/a;

    .line 27
    const-string v1, "phone_number"

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/instagram/android/g/b/c;->e:Ljava/lang/String;

    .line 28
    const-string v1, "email"

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/instagram/android/g/b/c;->f:Ljava/lang/String;

    .line 29
    const-string v1, "gender"

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    sget v2, Lcom/instagram/android/g/b/c;->c:I

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->asInt(I)I

    move-result v1

    iput v1, v0, Lcom/instagram/android/g/b/c;->i:I

    .line 30
    iget-object v1, v0, Lcom/instagram/android/g/b/c;->e:Ljava/lang/String;

    invoke-static {v1}, Lcom/instagram/common/y/e;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 31
    const-string v1, "country_code"

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/instagram/android/g/b/c;->g:Ljava/lang/String;

    .line 32
    const-string v1, "national_number"

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/instagram/android/g/b/c;->h:Ljava/lang/String;

    .line 34
    :cond_0
    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/instagram/android/g/b/c;->d:Lcom/instagram/user/c/a;

    invoke-virtual {v0}, Lcom/instagram/user/c/a;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)V
    .locals 0
    .parameter

    .prologue
    .line 110
    iput p1, p0, Lcom/instagram/android/g/b/c;->i:I

    .line 111
    return-void
.end method

.method public final a(Lcom/instagram/user/c/f;)V
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/instagram/android/g/b/c;->d:Lcom/instagram/user/c/a;

    invoke-virtual {v0, p1}, Lcom/instagram/user/c/a;->a(Lcom/instagram/user/c/f;)V

    .line 79
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/instagram/android/g/b/c;->d:Lcom/instagram/user/c/a;

    invoke-virtual {v0, p1}, Lcom/instagram/user/c/a;->b(Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/instagram/android/g/b/c;->d:Lcom/instagram/user/c/a;

    invoke-virtual {v0}, Lcom/instagram/user/c/a;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/instagram/android/g/b/c;->d:Lcom/instagram/user/c/a;

    invoke-virtual {v0, p1}, Lcom/instagram/user/c/a;->a(Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/instagram/android/g/b/c;->d:Lcom/instagram/user/c/a;

    invoke-virtual {v0}, Lcom/instagram/user/c/a;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/instagram/android/g/b/c;->d:Lcom/instagram/user/c/a;

    invoke-virtual {v0, p1}, Lcom/instagram/user/c/a;->f(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/instagram/android/g/b/c;->d:Lcom/instagram/user/c/a;

    invoke-virtual {v0}, Lcom/instagram/user/c/a;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/instagram/android/g/b/c;->d:Lcom/instagram/user/c/a;

    invoke-virtual {v0, p1}, Lcom/instagram/user/c/a;->e(Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public final e()Lcom/instagram/user/c/f;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/instagram/android/g/b/c;->d:Lcom/instagram/user/c/a;

    invoke-virtual {v0}, Lcom/instagram/user/c/a;->s()Lcom/instagram/user/c/f;

    move-result-object v0

    return-object v0
.end method

.method public final e(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/instagram/android/g/b/c;->e:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/instagram/android/g/b/c;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final f(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/instagram/android/g/b/c;->f:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/instagram/android/g/b/c;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/instagram/android/g/b/c;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/instagram/android/g/b/c;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final j()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/instagram/android/g/b/c;->i:I

    return v0
.end method

.method public final k()Lcom/instagram/user/c/a;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/instagram/android/g/b/c;->d:Lcom/instagram/user/c/a;

    return-object v0
.end method
