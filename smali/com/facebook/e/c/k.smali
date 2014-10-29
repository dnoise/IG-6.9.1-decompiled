.class public Lcom/facebook/e/c/k;
.super Ljava/lang/Object;
.source "Tracer.java"


# static fields
.field private static a:Lcom/facebook/e/c/o;

.field private static final b:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/facebook/e/c/m;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/facebook/e/c/b;

    invoke-direct {v0}, Lcom/facebook/e/c/b;-><init>()V

    sput-object v0, Lcom/facebook/e/c/k;->a:Lcom/facebook/e/c/o;

    .line 48
    new-instance v0, Lcom/facebook/e/c/l;

    invoke-direct {v0}, Lcom/facebook/e/c/l;-><init>()V

    sput-object v0, Lcom/facebook/e/c/k;->b:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method

.method public static a()V
    .locals 0

    .prologue
    .line 156
    invoke-static {}, Lcom/facebook/e/c/k;->b()J

    .line 157
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 233
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/facebook/e/c/k;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 234
    return-void
.end method

.method public static varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 92
    invoke-static {p0, p1}, Lcom/facebook/e/c/k;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    return-void
.end method

.method private static b()J
    .locals 9

    .prologue
    const-wide/16 v2, -0x1

    .line 198
    sget-object v0, Lcom/facebook/e/c/k;->a:Lcom/facebook/e/c/o;

    invoke-interface {v0}, Lcom/facebook/e/c/o;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    invoke-static {}, Lcom/facebook/systrace/a;->a()V

    .line 202
    :cond_0
    sget-object v0, Lcom/facebook/e/c/k;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/e/c/m;

    .line 203
    iget-boolean v1, v0, Lcom/facebook/e/c/m;->b:Z

    if-eqz v1, :cond_2

    move-wide v0, v2

    .line 224
    :cond_1
    :goto_0
    return-wide v0

    .line 207
    :cond_2
    iget-object v1, v0, Lcom/facebook/e/c/m;->a:Lcom/facebook/e/c/c;

    invoke-virtual {v1}, Lcom/facebook/e/c/c;->a()I

    move-result v1

    const/4 v4, 0x2

    if-ge v1, v4, :cond_3

    .line 208
    const-class v1, Lcom/facebook/e/c/k;

    const-string v4, "Tracer stack underflow. There\'s an extra stopTracer somewhere."

    invoke-static {v1, v4}, Lcom/facebook/e/a/a;->b(Ljava/lang/Class;Ljava/lang/String;)V

    .line 209
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/facebook/e/c/m;->b:Z

    move-wide v0, v2

    .line 210
    goto :goto_0

    .line 213
    :cond_3
    iget-object v1, v0, Lcom/facebook/e/c/m;->a:Lcom/facebook/e/c/c;

    invoke-virtual {v1}, Lcom/facebook/e/c/c;->b()J

    move-result-wide v4

    .line 214
    iget-object v0, v0, Lcom/facebook/e/c/m;->a:Lcom/facebook/e/c/c;

    invoke-virtual {v0}, Lcom/facebook/e/c/c;->b()J

    move-result-wide v0

    long-to-int v1, v0

    .line 217
    sget v0, Lcom/facebook/e/c/d;->b:I

    if-eq v1, v0, :cond_4

    .line 218
    sget-object v0, Lcom/facebook/e/c/d;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/e/c/d;

    .line 219
    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    invoke-virtual {v0, v1, v6, v7, v8}, Lcom/facebook/e/c/d;->a(IJZ)J

    move-result-wide v0

    .line 221
    :goto_1
    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    .line 222
    invoke-static {}, Lcom/facebook/e/c/n;->a()J

    move-result-wide v0

    sub-long/2addr v0, v4

    goto :goto_0

    :cond_4
    move-wide v0, v2

    goto :goto_1
.end method

.method public static varargs b(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 243
    invoke-static {p0, p1}, Lcom/facebook/e/c/k;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 244
    return-void
.end method

.method private static c(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 108
    sget-object v0, Lcom/facebook/e/c/k;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/e/c/m;

    .line 109
    iget-boolean v1, v0, Lcom/facebook/e/c/m;->b:Z

    if-eqz v1, :cond_1

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    iget-object v1, v0, Lcom/facebook/e/c/m;->a:Lcom/facebook/e/c/c;

    invoke-virtual {v1}, Lcom/facebook/e/c/c;->a()I

    move-result v1

    const/16 v2, 0x64

    if-lt v1, v2, :cond_2

    .line 114
    const-class v1, Lcom/facebook/e/c/k;

    const-string v2, "Tracer stack overflow. There is probably a missing stopTracer somewhere."

    invoke-static {v1, v2}, Lcom/facebook/e/a/a;->b(Ljava/lang/Class;Ljava/lang/String;)V

    .line 117
    iget-object v1, v0, Lcom/facebook/e/c/m;->a:Lcom/facebook/e/c/c;

    invoke-virtual {v1}, Lcom/facebook/e/c/c;->c()V

    .line 118
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/facebook/e/c/m;->b:Z

    goto :goto_0

    .line 122
    :cond_2
    sget-object v1, Lcom/facebook/e/c/k;->a:Lcom/facebook/e/c/o;

    invoke-interface {v1}, Lcom/facebook/e/c/o;->a()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 123
    sget-object v1, Lcom/facebook/e/c/d;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/e/c/d;

    .line 124
    const/4 v2, 0x0

    invoke-virtual {v1, p0, p1, v2}, Lcom/facebook/e/c/d;->a(Ljava/lang/String;[Ljava/lang/Object;Z)I

    move-result v2

    int-to-long v2, v2

    .line 125
    invoke-virtual {v1}, Lcom/facebook/e/c/d;->a()J

    move-result-wide v4

    .line 126
    iget-object v1, v0, Lcom/facebook/e/c/m;->a:Lcom/facebook/e/c/c;

    invoke-virtual {v1, v2, v3}, Lcom/facebook/e/c/c;->a(J)V

    .line 127
    iget-object v0, v0, Lcom/facebook/e/c/m;->a:Lcom/facebook/e/c/c;

    invoke-virtual {v0, v4, v5}, Lcom/facebook/e/c/c;->a(J)V

    .line 133
    :goto_1
    sget-object v0, Lcom/facebook/e/c/k;->a:Lcom/facebook/e/c/o;

    invoke-interface {v0}, Lcom/facebook/e/c/o;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    invoke-static {}, Lcom/facebook/systrace/a;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 137
    :try_start_0
    invoke-static {p0, p1}, Lcom/facebook/d/f/a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/IllegalFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 147
    :cond_3
    :goto_2
    invoke-static {p0}, Lcom/facebook/systrace/a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 129
    :cond_4
    iget-object v1, v0, Lcom/facebook/e/c/m;->a:Lcom/facebook/e/c/c;

    sget v2, Lcom/facebook/e/c/d;->b:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/facebook/e/c/c;->a(J)V

    .line 130
    iget-object v0, v0, Lcom/facebook/e/c/m;->a:Lcom/facebook/e/c/c;

    invoke-static {}, Lcom/facebook/e/c/n;->a()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/facebook/e/c/c;->a(J)V

    goto :goto_1

    .line 138
    :catch_0
    move-exception v0

    .line 140
    const-string v1, "Tracer"

    const-string v2, "Bad format string"

    invoke-static {v1, v2, v0}, Lcom/facebook/e/a/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method private static d(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 257
    sget-object v0, Lcom/facebook/e/c/k;->a:Lcom/facebook/e/c/o;

    invoke-interface {v0}, Lcom/facebook/e/c/o;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    sget-object v0, Lcom/facebook/e/c/d;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/e/c/d;

    .line 259
    invoke-virtual {v0, p0, p1}, Lcom/facebook/e/c/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 261
    :cond_0
    return-void
.end method
