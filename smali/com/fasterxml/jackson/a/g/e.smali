.class public final Lcom/fasterxml/jackson/a/g/e;
.super Ljava/lang/Object;
.source "DefaultPrettyPrinter.java"

# interfaces
.implements Lcom/fasterxml/jackson/a/g/j;
.implements Lcom/fasterxml/jackson/a/t;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/fasterxml/jackson/a/g/j",
        "<",
        "Lcom/fasterxml/jackson/a/g/e;",
        ">;",
        "Lcom/fasterxml/jackson/a/t;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final a:Lcom/fasterxml/jackson/a/c/l;


# instance fields
.field protected b:Lcom/fasterxml/jackson/a/g/g;

.field protected c:Lcom/fasterxml/jackson/a/g/g;

.field protected final d:Lcom/fasterxml/jackson/a/u;

.field protected e:Z

.field protected transient f:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Lcom/fasterxml/jackson/a/c/l;

    const-string v1, " "

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/a/c/l;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/fasterxml/jackson/a/g/e;->a:Lcom/fasterxml/jackson/a/c/l;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lcom/fasterxml/jackson/a/g/e;->a:Lcom/fasterxml/jackson/a/c/l;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/a/g/e;-><init>(Lcom/fasterxml/jackson/a/u;)V

    .line 94
    return-void
.end method

.method private constructor <init>(Lcom/fasterxml/jackson/a/g/e;)V
    .locals 1
    .parameter

    .prologue
    .line 124
    iget-object v0, p1, Lcom/fasterxml/jackson/a/g/e;->d:Lcom/fasterxml/jackson/a/u;

    invoke-direct {p0, p1, v0}, Lcom/fasterxml/jackson/a/g/e;-><init>(Lcom/fasterxml/jackson/a/g/e;Lcom/fasterxml/jackson/a/u;)V

    .line 125
    return-void
.end method

.method private constructor <init>(Lcom/fasterxml/jackson/a/g/e;Lcom/fasterxml/jackson/a/u;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    sget-object v0, Lcom/fasterxml/jackson/a/g/f;->a:Lcom/fasterxml/jackson/a/g/f;

    iput-object v0, p0, Lcom/fasterxml/jackson/a/g/e;->b:Lcom/fasterxml/jackson/a/g/g;

    .line 62
    sget-object v0, Lcom/fasterxml/jackson/a/g/h;->a:Lcom/fasterxml/jackson/a/g/h;

    iput-object v0, p0, Lcom/fasterxml/jackson/a/g/e;->c:Lcom/fasterxml/jackson/a/g/g;

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fasterxml/jackson/a/g/e;->e:Z

    .line 84
    const/4 v0, 0x0

    iput v0, p0, Lcom/fasterxml/jackson/a/g/e;->f:I

    .line 130
    iget-object v0, p1, Lcom/fasterxml/jackson/a/g/e;->b:Lcom/fasterxml/jackson/a/g/g;

    iput-object v0, p0, Lcom/fasterxml/jackson/a/g/e;->b:Lcom/fasterxml/jackson/a/g/g;

    .line 131
    iget-object v0, p1, Lcom/fasterxml/jackson/a/g/e;->c:Lcom/fasterxml/jackson/a/g/g;

    iput-object v0, p0, Lcom/fasterxml/jackson/a/g/e;->c:Lcom/fasterxml/jackson/a/g/g;

    .line 132
    iget-boolean v0, p1, Lcom/fasterxml/jackson/a/g/e;->e:Z

    iput-boolean v0, p0, Lcom/fasterxml/jackson/a/g/e;->e:Z

    .line 133
    iget v0, p1, Lcom/fasterxml/jackson/a/g/e;->f:I

    iput v0, p0, Lcom/fasterxml/jackson/a/g/e;->f:I

    .line 135
    iput-object p2, p0, Lcom/fasterxml/jackson/a/g/e;->d:Lcom/fasterxml/jackson/a/u;

    .line 136
    return-void
.end method

.method private constructor <init>(Lcom/fasterxml/jackson/a/u;)V
    .locals 1
    .parameter

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    sget-object v0, Lcom/fasterxml/jackson/a/g/f;->a:Lcom/fasterxml/jackson/a/g/f;

    iput-object v0, p0, Lcom/fasterxml/jackson/a/g/e;->b:Lcom/fasterxml/jackson/a/g/g;

    .line 62
    sget-object v0, Lcom/fasterxml/jackson/a/g/h;->a:Lcom/fasterxml/jackson/a/g/h;

    iput-object v0, p0, Lcom/fasterxml/jackson/a/g/e;->c:Lcom/fasterxml/jackson/a/g/g;

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fasterxml/jackson/a/g/e;->e:Z

    .line 84
    const/4 v0, 0x0

    iput v0, p0, Lcom/fasterxml/jackson/a/g/e;->f:I

    .line 120
    iput-object p1, p0, Lcom/fasterxml/jackson/a/g/e;->d:Lcom/fasterxml/jackson/a/u;

    .line 121
    return-void
.end method

.method private b()Lcom/fasterxml/jackson/a/g/e;
    .locals 1

    .prologue
    .line 167
    new-instance v0, Lcom/fasterxml/jackson/a/g/e;

    invoke-direct {v0, p0}, Lcom/fasterxml/jackson/a/g/e;-><init>(Lcom/fasterxml/jackson/a/g/e;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/g/e;->b()Lcom/fasterxml/jackson/a/g/e;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/fasterxml/jackson/a/h;)V
    .locals 1
    .parameter

    .prologue
    .line 180
    iget-object v0, p0, Lcom/fasterxml/jackson/a/g/e;->d:Lcom/fasterxml/jackson/a/u;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/fasterxml/jackson/a/g/e;->d:Lcom/fasterxml/jackson/a/u;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/a/h;->writeRaw(Lcom/fasterxml/jackson/a/u;)V

    .line 183
    :cond_0
    return-void
.end method

.method public final a(Lcom/fasterxml/jackson/a/h;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 243
    iget-object v0, p0, Lcom/fasterxml/jackson/a/g/e;->c:Lcom/fasterxml/jackson/a/g/g;

    invoke-interface {v0}, Lcom/fasterxml/jackson/a/g/g;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 244
    iget v0, p0, Lcom/fasterxml/jackson/a/g/e;->f:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/fasterxml/jackson/a/g/e;->f:I

    .line 246
    :cond_0
    if-lez p2, :cond_1

    .line 247
    iget-object v0, p0, Lcom/fasterxml/jackson/a/g/e;->c:Lcom/fasterxml/jackson/a/g/g;

    iget v1, p0, Lcom/fasterxml/jackson/a/g/e;->f:I

    invoke-interface {v0, p1, v1}, Lcom/fasterxml/jackson/a/g/g;->a(Lcom/fasterxml/jackson/a/h;I)V

    .line 251
    :goto_0
    const/16 v0, 0x7d

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/a/h;->writeRaw(C)V

    .line 252
    return-void

    .line 249
    :cond_1
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/a/h;->writeRaw(C)V

    goto :goto_0
.end method

.method public final b(Lcom/fasterxml/jackson/a/h;)V
    .locals 1
    .parameter

    .prologue
    .line 189
    const/16 v0, 0x7b

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/a/h;->writeRaw(C)V

    .line 190
    iget-object v0, p0, Lcom/fasterxml/jackson/a/g/e;->c:Lcom/fasterxml/jackson/a/g/g;

    invoke-interface {v0}, Lcom/fasterxml/jackson/a/g/g;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    iget v0, p0, Lcom/fasterxml/jackson/a/g/e;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/a/g/e;->f:I

    .line 193
    :cond_0
    return-void
.end method

.method public final b(Lcom/fasterxml/jackson/a/h;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 292
    iget-object v0, p0, Lcom/fasterxml/jackson/a/g/e;->b:Lcom/fasterxml/jackson/a/g/g;

    invoke-interface {v0}, Lcom/fasterxml/jackson/a/g/g;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 293
    iget v0, p0, Lcom/fasterxml/jackson/a/g/e;->f:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/fasterxml/jackson/a/g/e;->f:I

    .line 295
    :cond_0
    if-lez p2, :cond_1

    .line 296
    iget-object v0, p0, Lcom/fasterxml/jackson/a/g/e;->b:Lcom/fasterxml/jackson/a/g/g;

    iget v1, p0, Lcom/fasterxml/jackson/a/g/e;->f:I

    invoke-interface {v0, p1, v1}, Lcom/fasterxml/jackson/a/g/g;->a(Lcom/fasterxml/jackson/a/h;I)V

    .line 300
    :goto_0
    const/16 v0, 0x5d

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/a/h;->writeRaw(C)V

    .line 301
    return-void

    .line 298
    :cond_1
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/a/h;->writeRaw(C)V

    goto :goto_0
.end method

.method public final c(Lcom/fasterxml/jackson/a/h;)V
    .locals 2
    .parameter

    .prologue
    .line 235
    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/a/h;->writeRaw(C)V

    .line 236
    iget-object v0, p0, Lcom/fasterxml/jackson/a/g/e;->c:Lcom/fasterxml/jackson/a/g/g;

    iget v1, p0, Lcom/fasterxml/jackson/a/g/e;->f:I

    invoke-interface {v0, p1, v1}, Lcom/fasterxml/jackson/a/g/g;->a(Lcom/fasterxml/jackson/a/h;I)V

    .line 237
    return-void
.end method

.method public final d(Lcom/fasterxml/jackson/a/h;)V
    .locals 1
    .parameter

    .prologue
    .line 215
    iget-boolean v0, p0, Lcom/fasterxml/jackson/a/g/e;->e:Z

    if-eqz v0, :cond_0

    .line 216
    const-string v0, " : "

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/a/h;->writeRaw(Ljava/lang/String;)V

    .line 220
    :goto_0
    return-void

    .line 218
    :cond_0
    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/a/h;->writeRaw(C)V

    goto :goto_0
.end method

.method public final e(Lcom/fasterxml/jackson/a/h;)V
    .locals 1
    .parameter

    .prologue
    .line 258
    iget-object v0, p0, Lcom/fasterxml/jackson/a/g/e;->b:Lcom/fasterxml/jackson/a/g/g;

    invoke-interface {v0}, Lcom/fasterxml/jackson/a/g/g;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 259
    iget v0, p0, Lcom/fasterxml/jackson/a/g/e;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/a/g/e;->f:I

    .line 261
    :cond_0
    const/16 v0, 0x5b

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/a/h;->writeRaw(C)V

    .line 262
    return-void
.end method

.method public final f(Lcom/fasterxml/jackson/a/h;)V
    .locals 2
    .parameter

    .prologue
    .line 284
    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/a/h;->writeRaw(C)V

    .line 285
    iget-object v0, p0, Lcom/fasterxml/jackson/a/g/e;->b:Lcom/fasterxml/jackson/a/g/g;

    iget v1, p0, Lcom/fasterxml/jackson/a/g/e;->f:I

    invoke-interface {v0, p1, v1}, Lcom/fasterxml/jackson/a/g/g;->a(Lcom/fasterxml/jackson/a/h;I)V

    .line 286
    return-void
.end method

.method public final g(Lcom/fasterxml/jackson/a/h;)V
    .locals 2
    .parameter

    .prologue
    .line 268
    iget-object v0, p0, Lcom/fasterxml/jackson/a/g/e;->b:Lcom/fasterxml/jackson/a/g/g;

    iget v1, p0, Lcom/fasterxml/jackson/a/g/e;->f:I

    invoke-interface {v0, p1, v1}, Lcom/fasterxml/jackson/a/g/g;->a(Lcom/fasterxml/jackson/a/h;I)V

    .line 269
    return-void
.end method

.method public final h(Lcom/fasterxml/jackson/a/h;)V
    .locals 2
    .parameter

    .prologue
    .line 199
    iget-object v0, p0, Lcom/fasterxml/jackson/a/g/e;->c:Lcom/fasterxml/jackson/a/g/g;

    iget v1, p0, Lcom/fasterxml/jackson/a/g/e;->f:I

    invoke-interface {v0, p1, v1}, Lcom/fasterxml/jackson/a/g/g;->a(Lcom/fasterxml/jackson/a/h;I)V

    .line 200
    return-void
.end method
