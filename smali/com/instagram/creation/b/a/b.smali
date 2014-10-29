.class public Lcom/instagram/creation/b/a/b;
.super Ljava/lang/Object;
.source "PendingMedia.java"

# interfaces
.implements Lcom/instagram/model/a/b;


# instance fields
.field private A:I

.field private B:Ljava/lang/String;

.field private C:Lcom/instagram/model/people/b;

.field private D:Ljava/lang/String;

.field private E:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/creation/b/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private F:Lcom/instagram/creation/b/a/a;

.field private G:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/creation/b/a/j;",
            ">;"
        }
    .end annotation
.end field

.field private H:Z

.field private I:Lcom/instagram/creation/b/a/g;

.field private J:I

.field private volatile a:Lcom/instagram/creation/b/a/d;

.field private volatile b:Lcom/instagram/creation/b/a/d;

.field private c:Lcom/instagram/model/a/a;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:I

.field private i:Lcom/instagram/creation/b/a/i;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:D

.field private s:D

.field private t:Lcom/instagram/venue/model/Venue;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private volatile w:Z

.field private volatile x:I

.field private volatile y:Lcom/instagram/creation/b/a/c;

.field private z:I


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    sget-object v0, Lcom/instagram/creation/b/a/d;->a:Lcom/instagram/creation/b/a/d;

    iput-object v0, p0, Lcom/instagram/creation/b/a/b;->a:Lcom/instagram/creation/b/a/d;

    .line 42
    sget-object v0, Lcom/instagram/creation/b/a/d;->a:Lcom/instagram/creation/b/a/d;

    iput-object v0, p0, Lcom/instagram/creation/b/a/b;->b:Lcom/instagram/creation/b/a/d;

    .line 89
    new-instance v0, Lcom/instagram/model/people/b;

    invoke-direct {v0}, Lcom/instagram/model/people/b;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/b/a/b;->C:Lcom/instagram/model/people/b;

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/creation/b/a/b;->D:Ljava/lang/String;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/b/a/b;->E:Ljava/util/List;

    .line 99
    new-instance v0, Lcom/instagram/creation/b/a/g;

    invoke-direct {v0}, Lcom/instagram/creation/b/a/g;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/b/a/b;->I:Lcom/instagram/creation/b/a/g;

    .line 122
    iput-object p1, p0, Lcom/instagram/creation/b/a/b;->f:Ljava/lang/String;

    .line 123
    iput-object p1, p0, Lcom/instagram/creation/b/a/b;->B:Ljava/lang/String;

    .line 124
    return-void
.end method

.method private R()V
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/instagram/creation/b/a/b;->y:Lcom/instagram/creation/b/a/c;

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/instagram/creation/b/a/b;->y:Lcom/instagram/creation/b/a/c;

    invoke-interface {v0, p0}, Lcom/instagram/creation/b/a/c;->a(Lcom/instagram/creation/b/a/b;)V

    .line 435
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/instagram/creation/b/a/b;
    .locals 2
    .parameter

    .prologue
    .line 107
    new-instance v0, Lcom/instagram/creation/b/a/b;

    invoke-direct {v0, p0}, Lcom/instagram/creation/b/a/b;-><init>(Ljava/lang/String;)V

    .line 108
    sget-object v1, Lcom/instagram/model/a/a;->a:Lcom/instagram/model/a/a;

    iput-object v1, v0, Lcom/instagram/creation/b/a/b;->c:Lcom/instagram/model/a/a;

    .line 109
    return-object v0
.end method

.method public static b(Ljava/lang/String;)Lcom/instagram/creation/b/a/b;
    .locals 2
    .parameter

    .prologue
    .line 116
    new-instance v0, Lcom/instagram/creation/b/a/b;

    invoke-direct {v0, p0}, Lcom/instagram/creation/b/a/b;-><init>(Ljava/lang/String;)V

    .line 117
    sget-object v1, Lcom/instagram/model/a/a;->b:Lcom/instagram/model/a/a;

    iput-object v1, v0, Lcom/instagram/creation/b/a/b;->c:Lcom/instagram/model/a/a;

    .line 118
    return-object v0
.end method


# virtual methods
.method public final A()Lcom/instagram/creation/b/a/d;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/instagram/creation/b/a/b;->b:Lcom/instagram/creation/b/a/d;

    return-object v0
.end method

.method public final B()Ljava/lang/String;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/instagram/creation/b/a/b;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final C()Ljava/lang/String;
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/instagram/creation/b/a/b;->k:Ljava/lang/String;

    return-object v0
.end method

.method public final D()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/creation/b/a/j;",
            ">;"
        }
    .end annotation

    .prologue
    .line 356
    iget-object v0, p0, Lcom/instagram/creation/b/a/b;->G:Ljava/util/List;

    return-object v0
.end method

.method public final E()Lcom/instagram/model/people/b;
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/instagram/creation/b/a/b;->C:Lcom/instagram/model/people/b;

    return-object v0
.end method

.method public final F()Z
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/instagram/creation/b/a/b;->C:Lcom/instagram/model/people/b;

    invoke-virtual {v0}, Lcom/instagram/model/people/b;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final G()Z
    .locals 1

    .prologue
    .line 376
    iget v0, p0, Lcom/instagram/creation/b/a/b;->z:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/instagram/creation/b/a/b;->A:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final H()I
    .locals 1

    .prologue
    .line 380
    iget v0, p0, Lcom/instagram/creation/b/a/b;->z:I

    return v0
.end method

.method public final I()I
    .locals 1

    .prologue
    .line 388
    iget v0, p0, Lcom/instagram/creation/b/a/b;->A:I

    return v0
.end method

.method public final J()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/creation/b/a/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 400
    iget-object v0, p0, Lcom/instagram/creation/b/a/b;->E:Ljava/util/List;

    return-object v0
.end method

.method public final K()Lcom/instagram/creation/b/a/a;
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcom/instagram/creation/b/a/b;->F:Lcom/instagram/creation/b/a/a;

    return-object v0
.end method

.method public final L()Ljava/lang/String;
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcom/instagram/creation/b/a/b;->D:Ljava/lang/String;

    return-object v0
.end method

.method public final M()Ljava/lang/String;
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lcom/instagram/creation/b/a/b;->u:Ljava/lang/String;

    return-object v0
.end method

.method public final N()Lcom/instagram/creation/b/a/g;
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lcom/instagram/creation/b/a/b;->I:Lcom/instagram/creation/b/a/g;

    return-object v0
.end method

.method public final O()Z
    .locals 2

    .prologue
    .line 442
    iget-object v0, p0, Lcom/instagram/creation/b/a/b;->c:Lcom/instagram/model/a/a;

    sget-object v1, Lcom/instagram/model/a/a;->b:Lcom/instagram/model/a/a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final P()Z
    .locals 1

    .prologue
    .line 446
    iget-boolean v0, p0, Lcom/instagram/creation/b/a/b;->H:Z

    return v0
.end method

.method public final Q()I
    .locals 1

    .prologue
    .line 454
    iget v0, p0, Lcom/instagram/creation/b/a/b;->J:I

    return v0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/instagram/creation/b/a/b;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final a(D)V
    .locals 0
    .parameter

    .prologue
    .line 181
    iput-wide p1, p0, Lcom/instagram/creation/b/a/b;->r:D

    .line 182
    return-void
.end method

.method public final a(I)V
    .locals 0
    .parameter

    .prologue
    .line 143
    iput p1, p0, Lcom/instagram/creation/b/a/b;->g:I

    .line 144
    return-void
.end method

.method public final a(Lcom/instagram/creation/b/a/a;)V
    .locals 0
    .parameter

    .prologue
    .line 412
    iput-object p1, p0, Lcom/instagram/creation/b/a/b;->F:Lcom/instagram/creation/b/a/a;

    .line 413
    return-void
.end method

.method public final a(Lcom/instagram/creation/b/a/c;)V
    .locals 0
    .parameter

    .prologue
    .line 319
    iput-object p1, p0, Lcom/instagram/creation/b/a/b;->y:Lcom/instagram/creation/b/a/c;

    .line 320
    return-void
.end method

.method public final a(Lcom/instagram/creation/b/a/d;)V
    .locals 0
    .parameter

    .prologue
    .line 327
    iput-object p1, p0, Lcom/instagram/creation/b/a/b;->a:Lcom/instagram/creation/b/a/d;

    .line 328
    invoke-direct {p0}, Lcom/instagram/creation/b/a/b;->R()V

    .line 329
    return-void
.end method

.method public final a(Lcom/instagram/creation/b/a/i;)V
    .locals 0
    .parameter

    .prologue
    .line 159
    iput-object p1, p0, Lcom/instagram/creation/b/a/b;->i:Lcom/instagram/creation/b/a/i;

    .line 160
    return-void
.end method

.method public final a(Lcom/instagram/venue/model/Venue;)V
    .locals 0
    .parameter

    .prologue
    .line 197
    iput-object p1, p0, Lcom/instagram/creation/b/a/b;->t:Lcom/instagram/venue/model/Venue;

    .line 198
    return-void
.end method

.method public final a(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/instagram/model/people/PeopleTag;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 368
    new-instance v0, Lcom/instagram/model/people/b;

    invoke-direct {v0, p1}, Lcom/instagram/model/people/b;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/instagram/creation/b/a/b;->C:Lcom/instagram/model/people/b;

    .line 369
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/creation/b/a/j;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 360
    iput-object p1, p0, Lcom/instagram/creation/b/a/b;->G:Ljava/util/List;

    .line 361
    return-void
.end method

.method public final a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 238
    iput-boolean p1, p0, Lcom/instagram/creation/b/a/b;->l:Z

    .line 239
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/instagram/creation/b/a/b;->B:Ljava/lang/String;

    return-object v0
.end method

.method public final b(D)V
    .locals 0
    .parameter

    .prologue
    .line 189
    iput-wide p1, p0, Lcom/instagram/creation/b/a/b;->s:D

    .line 190
    return-void
.end method

.method public final b(I)V
    .locals 0
    .parameter

    .prologue
    .line 151
    iput p1, p0, Lcom/instagram/creation/b/a/b;->h:I

    .line 152
    return-void
.end method

.method public final b(Lcom/instagram/creation/b/a/d;)V
    .locals 0
    .parameter

    .prologue
    .line 336
    iput-object p1, p0, Lcom/instagram/creation/b/a/b;->b:Lcom/instagram/creation/b/a/d;

    .line 337
    return-void
.end method

.method public final b(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/creation/b/a/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 404
    iput-object p1, p0, Lcom/instagram/creation/b/a/b;->E:Ljava/util/List;

    .line 405
    return-void
.end method

.method public final b(Z)V
    .locals 0
    .parameter

    .prologue
    .line 243
    iput-boolean p1, p0, Lcom/instagram/creation/b/a/b;->m:Z

    .line 244
    return-void
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/instagram/creation/b/a/b;->g:I

    return v0
.end method

.method public final c(I)V
    .locals 0
    .parameter

    .prologue
    .line 310
    iput p1, p0, Lcom/instagram/creation/b/a/b;->x:I

    .line 311
    invoke-direct {p0}, Lcom/instagram/creation/b/a/b;->R()V

    .line 312
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/instagram/creation/b/a/b;->B:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public final c(Z)V
    .locals 0
    .parameter

    .prologue
    .line 248
    iput-boolean p1, p0, Lcom/instagram/creation/b/a/b;->n:Z

    .line 249
    return-void
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lcom/instagram/creation/b/a/b;->h:I

    return v0
.end method

.method public final d(I)V
    .locals 0
    .parameter

    .prologue
    .line 384
    iput p1, p0, Lcom/instagram/creation/b/a/b;->z:I

    .line 385
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 163
    iput-object p1, p0, Lcom/instagram/creation/b/a/b;->v:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public final d(Z)V
    .locals 0
    .parameter

    .prologue
    .line 253
    iput-boolean p1, p0, Lcom/instagram/creation/b/a/b;->o:Z

    .line 254
    return-void
.end method

.method public final e()Lcom/instagram/creation/b/a/i;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/instagram/creation/b/a/b;->i:Lcom/instagram/creation/b/a/i;

    return-object v0
.end method

.method public final e(I)V
    .locals 0
    .parameter

    .prologue
    .line 392
    iput p1, p0, Lcom/instagram/creation/b/a/b;->A:I

    .line 393
    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 205
    iput-object p1, p0, Lcom/instagram/creation/b/a/b;->d:Ljava/lang/String;

    .line 206
    return-void
.end method

.method public final e(Z)V
    .locals 0
    .parameter

    .prologue
    .line 258
    iput-boolean p1, p0, Lcom/instagram/creation/b/a/b;->p:Z

    .line 259
    return-void
.end method

.method public final f(I)V
    .locals 0
    .parameter

    .prologue
    .line 458
    iput p1, p0, Lcom/instagram/creation/b/a/b;->J:I

    .line 459
    return-void
.end method

.method public final f(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 213
    iput-object p1, p0, Lcom/instagram/creation/b/a/b;->e:Ljava/lang/String;

    .line 214
    return-void
.end method

.method public final f(Z)V
    .locals 0
    .parameter

    .prologue
    .line 263
    iput-boolean p1, p0, Lcom/instagram/creation/b/a/b;->q:Z

    .line 264
    return-void
.end method

.method public final f()Z
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 168
    iget-wide v0, p0, Lcom/instagram/creation/b/a/b;->r:D

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/instagram/creation/b/a/b;->s:D

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 172
    iput-wide v0, p0, Lcom/instagram/creation/b/a/b;->r:D

    .line 173
    iput-wide v0, p0, Lcom/instagram/creation/b/a/b;->s:D

    .line 174
    return-void
.end method

.method public final g(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 344
    iput-object p1, p0, Lcom/instagram/creation/b/a/b;->j:Ljava/lang/String;

    .line 345
    return-void
.end method

.method public final g(Z)V
    .locals 0
    .parameter

    .prologue
    .line 301
    iput-boolean p1, p0, Lcom/instagram/creation/b/a/b;->w:Z

    .line 302
    invoke-direct {p0}, Lcom/instagram/creation/b/a/b;->R()V

    .line 303
    return-void
.end method

.method public final h()Ljava/lang/Double;
    .locals 2

    .prologue
    .line 177
    iget-wide v0, p0, Lcom/instagram/creation/b/a/b;->r:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public final h(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 352
    iput-object p1, p0, Lcom/instagram/creation/b/a/b;->k:Ljava/lang/String;

    .line 353
    return-void
.end method

.method public final h(Z)V
    .locals 0
    .parameter

    .prologue
    .line 450
    iput-boolean p1, p0, Lcom/instagram/creation/b/a/b;->H:Z

    .line 451
    return-void
.end method

.method public final i()Ljava/lang/Double;
    .locals 2

    .prologue
    .line 185
    iget-wide v0, p0, Lcom/instagram/creation/b/a/b;->s:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public final i(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 420
    iput-object p1, p0, Lcom/instagram/creation/b/a/b;->D:Ljava/lang/String;

    .line 421
    return-void
.end method

.method public final j()Lcom/instagram/venue/model/Venue;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/instagram/creation/b/a/b;->t:Lcom/instagram/venue/model/Venue;

    return-object v0
.end method

.method public final j(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 428
    iput-object p1, p0, Lcom/instagram/creation/b/a/b;->u:Ljava/lang/String;

    .line 429
    return-void
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/instagram/creation/b/a/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/instagram/creation/b/a/b;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/instagram/creation/b/a/b;->v:Ljava/lang/String;

    return-object v0
.end method

.method public final n()Lcom/instagram/model/a/a;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/instagram/creation/b/a/b;->c:Lcom/instagram/model/a/a;

    return-object v0
.end method

.method public final o()Z
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/instagram/creation/b/a/b;->t:Lcom/instagram/venue/model/Venue;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final p()Z
    .locals 1

    .prologue
    .line 233
    const/4 v0, 0x1

    return v0
.end method

.method public final q()Z
    .locals 1

    .prologue
    .line 268
    iget-boolean v0, p0, Lcom/instagram/creation/b/a/b;->l:Z

    return v0
.end method

.method public final r()Z
    .locals 1

    .prologue
    .line 273
    iget-boolean v0, p0, Lcom/instagram/creation/b/a/b;->p:Z

    return v0
.end method

.method public final s()Z
    .locals 1

    .prologue
    .line 278
    iget-boolean v0, p0, Lcom/instagram/creation/b/a/b;->m:Z

    return v0
.end method

.method public final t()Z
    .locals 1

    .prologue
    .line 283
    iget-boolean v0, p0, Lcom/instagram/creation/b/a/b;->n:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 463
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "Media type:"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/instagram/creation/b/a/b;->c:Lcom/instagram/model/a/a;

    sget-object v2, Lcom/instagram/model/a/a;->a:Lcom/instagram/model/a/a;

    if-ne v0, v2, :cond_1

    const-string v0, "Photo"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nServer Status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/creation/b/a/b;->a:Lcom/instagram/creation/b/a/d;

    invoke-virtual {v1}, Lcom/instagram/creation/b/a/d;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nTarget Status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/creation/b/a/b;->b:Lcom/instagram/creation/b/a/d;

    invoke-virtual {v1}, Lcom/instagram/creation/b/a/d;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 467
    iget-object v1, p0, Lcom/instagram/creation/b/a/b;->c:Lcom/instagram/model/a/a;

    sget-object v2, Lcom/instagram/model/a/a;->b:Lcom/instagram/model/a/a;

    if-ne v1, v2, :cond_0

    .line 468
    const-string v1, "\nSession name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/creation/b/a/b;->D:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    const-string v1, "\nRendered Video Path: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/creation/b/a/b;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 463
    :cond_1
    const-string v0, "Video"

    goto :goto_0
.end method

.method public final u()Z
    .locals 1

    .prologue
    .line 288
    iget-boolean v0, p0, Lcom/instagram/creation/b/a/b;->o:Z

    return v0
.end method

.method public final v()Z
    .locals 1

    .prologue
    .line 293
    iget-boolean v0, p0, Lcom/instagram/creation/b/a/b;->q:Z

    return v0
.end method

.method public final w()Z
    .locals 1

    .prologue
    .line 297
    iget-boolean v0, p0, Lcom/instagram/creation/b/a/b;->w:Z

    return v0
.end method

.method public final x()I
    .locals 1

    .prologue
    .line 306
    iget v0, p0, Lcom/instagram/creation/b/a/b;->x:I

    return v0
.end method

.method public final y()Lcom/instagram/creation/b/a/c;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/instagram/creation/b/a/b;->y:Lcom/instagram/creation/b/a/c;

    return-object v0
.end method

.method public final z()Lcom/instagram/creation/b/a/d;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/instagram/creation/b/a/b;->a:Lcom/instagram/creation/b/a/d;

    return-object v0
.end method
