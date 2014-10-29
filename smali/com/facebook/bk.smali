.class public Lcom/facebook/bk;
.super Landroid/os/AsyncTask;
.source "RequestAsyncTask.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x3
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/facebook/bn;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Ljava/lang/reflect/Method;


# instance fields
.field private final c:Ljava/net/HttpURLConnection;

.field private final d:Lcom/facebook/bl;

.field private e:Ljava/lang/Exception;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 37
    const-class v0, Lcom/facebook/bk;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/bk;->a:Ljava/lang/String;

    .line 46
    const-class v0, Landroid/os/AsyncTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 47
    const-string v5, "executeOnExecutor"

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 48
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    .line 49
    array-length v6, v5

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    aget-object v6, v5, v1

    const-class v7, Ljava/util/concurrent/Executor;

    if-ne v6, v7, :cond_1

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v5}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 50
    sput-object v4, Lcom/facebook/bk;->b:Ljava/lang/reflect/Method;

    .line 55
    :cond_0
    return-void

    .line 46
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Lcom/facebook/bl;)V
    .locals 1
    .parameter

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/bk;-><init>(Lcom/facebook/bl;B)V

    .line 85
    return-void
.end method

.method private constructor <init>(Lcom/facebook/bl;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 122
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 123
    iput-object p1, p0, Lcom/facebook/bk;->d:Lcom/facebook/bl;

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/bk;->c:Ljava/net/HttpURLConnection;

    .line 125
    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/bn;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 153
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 155
    iget-object v0, p0, Lcom/facebook/bk;->e:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    .line 156
    sget-object v0, Lcom/facebook/bk;->a:Ljava/lang/String;

    const-string v0, "onPostExecute: exception encountered during request: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/facebook/bk;->e:Ljava/lang/Exception;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 158
    :cond_0
    return-void
.end method

.method private varargs b()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/bn;",
            ">;"
        }
    .end annotation

    .prologue
    .line 163
    :try_start_0
    iget-object v0, p0, Lcom/facebook/bk;->c:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/facebook/bk;->d:Lcom/facebook/bl;

    invoke-virtual {v0}, Lcom/facebook/bl;->g()Ljava/util/List;

    move-result-object v0

    .line 170
    :goto_0
    return-object v0

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/facebook/bk;->c:Ljava/net/HttpURLConnection;

    iget-object v1, p0, Lcom/facebook/bk;->d:Lcom/facebook/bl;

    invoke-static {v0, v1}, Lcom/facebook/bc;->a(Ljava/net/HttpURLConnection;Lcom/facebook/bl;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 168
    :catch_0
    move-exception v0

    .line 169
    iput-object v0, p0, Lcom/facebook/bk;->e:Ljava/lang/Exception;

    .line 170
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method final a()Lcom/facebook/bk;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 176
    :try_start_0
    sget-object v0, Lcom/facebook/bk;->b:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 177
    sget-object v0, Lcom/facebook/bk;->b:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Lcom/facebook/cj;->a()Ljava/util/concurrent/Executor;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    .line 186
    :cond_0
    :goto_1
    new-array v0, v4, [Ljava/lang/Void;

    invoke-virtual {p0, v0}, Lcom/facebook/bk;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 184
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/facebook/bk;->b()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    check-cast p1, Ljava/util/List;

    .end local p1
    invoke-direct {p0, p1}, Lcom/facebook/bk;->a(Ljava/util/List;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 143
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 145
    iget-object v0, p0, Lcom/facebook/bk;->d:Lcom/facebook/bl;

    invoke-virtual {v0}, Lcom/facebook/bl;->c()Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/facebook/bk;->d:Lcom/facebook/bl;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v0, v1}, Lcom/facebook/bl;->a(Landroid/os/Handler;)V

    .line 149
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{RequestAsyncTask:  connection: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/facebook/bk;->c:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", requests: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/bk;->d:Lcom/facebook/bl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
